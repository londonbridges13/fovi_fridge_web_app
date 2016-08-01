module API
  module V1
    class Surveys < Grape::API
      resource :surveys do
        desc 'Query 500 of the Survey Question'
        get do
          present Survey.order(created_at: :desc).limit(500).shuffle, with: Entity::V1::SurveysEntity
        end
      end
    end
  end
end
