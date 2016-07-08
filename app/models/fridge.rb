class Fridge < ActiveRecord::Base
  belongs_to :family
  has_many :food_items
end
