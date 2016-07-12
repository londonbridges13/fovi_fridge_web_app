module API
  module V1
    class BasicFoodItems < Grape::API
      resource :basic_food_items do
        desc 'Query All the BasicFoodItems'
        get do
          present BasicFoodItem.all, with: Entity::V1::BasicFoodItemsEntity
        end
      end
    end
  end
end
