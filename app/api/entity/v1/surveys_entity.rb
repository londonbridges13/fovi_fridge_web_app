module Entity
  module V1
    class SurveysEntity < Grape::Entity
      expose :id, :question, :image, :pre_question, :type
    end
  end
end
