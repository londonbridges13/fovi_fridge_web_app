module Entity
  module V2
    class SurveysEntity < Grape::Entity
      expose :id, :question, :image, :pre_question, :stype, :option1, :option2, :option3,
       :option4, :option5
    end
  end
end
