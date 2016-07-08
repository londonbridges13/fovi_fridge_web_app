json.array!(@families) do |family|
  json.extract! family, :id, :title
  json.url family_url(family, format: :json)
end
