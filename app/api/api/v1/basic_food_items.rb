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
          present BasicFoodItem.order(title: :asc).where(:is_new => false), with: Entity::V1::BasicFoodItemsEntity
        end

        desc 'API For Collecting New BasicFoodItems'
        post do
          # @basic_food_item = BasicFoodItem.create!({
          #   title: params[:title], measurement_type: params[:measurement_type],
          #     calories: params[:calories], total_fat: params[:total_fat],
          #     saturated_fat: params[:saturated_fat], unsaturated_fat: params[:unsaturated_fat], protien: params[:protien],
          #      carbohydrate: params[:carbohydrate], fiber: params[:fiber],
          #      iron: params[:iron], vitamin_a: params[:vitamin_a], vitamin_b12: params[:vitamin_b12], vitamin_b6: params[:vitamin_b6],
          #      vitamin_c: params[:vitamin_c], vitamin_d: params[:vitamin_d],  vitamin_e: params[:vitamin_e],
          #      vitamin_k: params[:vitamin_k], potassium: params[:potassium], sodium: params[:sodium], niacin: params[:niacin],
          #       folate: params[:folate], zinc: params[:zinc], thiamin: params[:thiamin], riboflavin: params[:riboflavin],
          #        calcium: params[:calcium], magnesium: params[:magnesium], cholesterol: params[:cholesterol], caffeine: params[:caffeine]
          #   })
          #   @basic_food_item.is_basic = true
          #   @basic_food_item.food_category = "Others" #default
          #   @basic_food_item.is_new = true
          #   @basic_food_item.save!
        end
      end
    end
  end
end
