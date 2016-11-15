module Entity
  module V2
    class BasicFoodItemsEntity < Grape::Entity
      expose :id, :title, :updated_at, :is_basic, :fridge_amount, :shoppinglist_amount, :mylist_amount, :measurement_type,
      :full_amount, :current_amount, :usually_expires, :expiration_date, :modified_date, :categories, :image, :image_url,
      :fridge_usually_expires, :food_category, :tags
    end
  end
end
