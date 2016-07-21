module Entity
  module V1
    class SurveysEntity < Grape::Entity
      expose :id, :question
    end
  end
end
