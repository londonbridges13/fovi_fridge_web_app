class Family < ActiveRecord::Base
  has_many :users
  has_one :fridge
end
