module API
  module V2
    class Base < Grape::API
      format :json
      default_format :json

      prefix 'api'
      version 'v2', using: :path


      # mount V2::SuggestedFoodItems
      mount V2::BasicFoodItems
      # mount V2::Surveys
      # mount V2::Answers

    end
  end
end
