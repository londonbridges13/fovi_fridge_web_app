class Rack::Attack
  # your custom configuration...



  ### Throttle Spammy Clients ###

  # If any single client IP is making tons of requests, then they're
  # probably malicious or a poorly-configured scraper. Either way, they
  # don't deserve to hog all of the app server's CPU. Cut them off!
  #
  # Note: If you're serving assets through rack, those requests may be
  # counted by rack-attack and this throttle may be activated too
  # quickly. If so, enable the condition to exclude them from tracking.

  # Throttle all requests by IP (60rpm)
  #
  # Key: "rack::attack:#{Time.now.to_i/:period}:req/ip:#{req.ip}"
  throttle('req/ip', :limit => 300, :period => 5.minutes) do |req|
    req.ip # unless req.path.start_with?('/assets')
  end



  # Throttle POST requests to /login by email param
    #
    # Key: "rack::attack:#{Time.now.to_i/:period}:logins/email:#{req.email}"
    #
    # Note: This creates a problem where a malicious user could intentionally
    # throttle logins for another user and force their login requests to be
    # denied, but that's not very common and shouldn't happen to you. (Knock
    # on wood!)
    throttle("logins/email", :limit => 5, :period => 20.seconds) do |req|
      if req.path == '/login' && req.post?
        # return the email if present, nil otherwise
        req.params['email'].presence
      end
    end

  ### Prevent Brute-Force Login Attacks ###

  # The most common brute-force login attack is a brute-force password
  # attack where an attacker simply tries a large number of emails and
  # passwords to see if any credentials match.
  #
  # Another common method of attack is to use a swarm of computers with
  # different IPs to try brute-forcing a password for a specific account.

  # Throttle POST requests to /login by IP address
  #
  # Key: "rack::attack:#{Time.now.to_i/:period}:logins/ip:#{req.ip}"
  throttle('logins/ip', :limit => 5, :period => 20.seconds) do |req|
    # change /login to what the users /sign_in is, or change users /sign_in to /login
    if req.path == '/login' && req.post?
      req.ip
    end
  end

  #Prevent Brute Force on Admin login
  throttle('admins/ip', :limit => 5, :period => 20.minutes) do |req|
    # change /login to what the users /sign_in is, or change users /sign_in to /login
    if req.path == '/login' && req.post?
      req.ip
    end
  end



  # Lockout IP addresses that are hammering your login page.
  # After 20 requests in 1 minute, block all requests from that IP for 1 hour.
  Rack::Attack.blocklist('allow2ban login scrapers') do |req|
    # `filter` returns false value if request is to your login page (but still
    # increments the count) so request below the limit are not blocked until
    # they hit the limit.  At that point, filter will return true and block.
    Rack::Attack::Allow2Ban.filter(req.ip, :maxretry => 20, :findtime => 1.minute, :bantime => 1.hour) do
      # The count for the IP is incremented if the return value is truthy.
      req.path == '/login' and req.post?
    end
  end

  #For Admin, blocks ip address
  Rack::Attack.blocklist('allow2ban login scrapers') do |req|
    # `filter` returns false value if request is to your login page (but still
    # increments the count) so request below the limit are not blocked until
    # they hit the limit.  At that point, filter will return true and block.
    Rack::Attack::Allow2Ban.filter(req.ip, :maxretry => 10, :findtime => 1.minute, :bantime => 1.hour) do
      # The count for the IP is incremented if the return value is truthy.
      req.path == '/login' and req.post?
    end
  end
  
end
