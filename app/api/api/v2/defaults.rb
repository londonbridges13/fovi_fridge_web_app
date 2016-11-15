module API
  module V2
    module Defaults
      extend ActiveSupport::Concern

      included do
        prefix "api"
        version "v2", using: :path
        default_format :json
        format :json
        # formatter :json,
            #  Grape::Formatter::ActiveModelSerializers

        helpers do
          def lowercase_all_tags
            present @basic_food_item.tags.count#each do |t|
              # t.downcase
              # t.save
            # end
          end
          # def permitted_params
          #   @permitted_params ||= declared(params,
          #      include_missing: false)
          # end

          # def logger
          #   Rails.logger
          # end
        end

        rescue_from ActiveRecord::RecordNotFound do |e|
          error_response(message: e.message, status: 404)
        end

        rescue_from ActiveRecord::RecordInvalid do |e|
          error_response(message: e.message, status: 422)
        end
      end
    end
  end
end
