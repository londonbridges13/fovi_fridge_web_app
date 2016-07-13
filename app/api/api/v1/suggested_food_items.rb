module API
  module V1
    class SuggestedFoodItems < Grape::API
      format :json
      resource :suggested_food_items do
        format :json
        desc 'Add SuggestedFoodItems to Fovi Database'
        get do
          present SuggestedFoodItem.all, with: Entity::V1::SuggestedFoodItemsEntity
        end
        post do
          SuggestedFoodItem.create!({
                         title: params[:title],
                         is_basic: params[:is_basic],
                        #  fridge_amount: params[:fridge_amount],
                        #  shoppinglist_amount: params[:shoppinglist_amount],
                        #  mylist_amount: params[:mylist_amount],
                         measurement_type: params[:measurement_type],
                         full_amount: params[:full_amount],
                        #  current_amount: params[:current_amount],
                         usually_expires: params[:usually_expires],
                        #  expiration_date: params[:expiration_date],
                        #  modified_date: params[:modified_date],
                         categories: params[:categories]
                     }), with: Entity::V1::SuggestedFoodItemsEntity
        end
      end
    end
  end
end
