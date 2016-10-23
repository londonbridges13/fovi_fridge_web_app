require 'doorkeeper/grape/helpers'
module API
  module V1
    class BasicFoodItems < Grape::API
      helpers Doorkeeper::Grape::Helpers

      before do
        # doorkeeper_authorize! # Users are still using older version
      end

      resource :basic_food_items do
        desc 'Query All the BasicFoodItems'
        get do
          present BasicFoodItem.order(title: :asc).all, with: Entity::V1::BasicFoodItemsEntity
        end
      end
    end
  end
end
