require 'doorkeeper/grape/helpers'
module API
  module V2
    class BasicFoodItems < Grape::API
      include API::V2::Defaults
      helpers Doorkeeper::Grape::Helpers

      before do
        doorkeeper_authorize! # Users are still using older version
      end

      # => ATTENTION THIS VERSION IS FOR DEVELOPERS ONLY

        desc 'Development ONLY'
        resource :basic_food_items do
          namespace 'development' do
            get do
              present BasicFoodItem.order(title: :asc).where(:is_new => false), with: Entity::V2::BasicFoodItemsEntity
            end
            namespace 'add_tag' do
              post do
                # search for basic_food_item by id (using params[:food_id])
                food_id = params[:food_id]
                tag = params[:tag]
                @basic_food_item = BasicFoodItem.find_by_id(food_id)

                # lowercase_all_tags()
                @basic_food_item.tags.push(tag)
                # @basic_food_item.tags = ""
                @basic_food_item.save
                present "#{@basic_food_item.tags}, #{tag}"
              end
            end
            namespace 'remove_tag' do
              post do
                food_id = params[:food_id]
                tag = params[:tag]
                @basic_food_item = BasicFoodItem.find_by_id(food_id)
              end
            end
          end
        end
    end
  end
end
