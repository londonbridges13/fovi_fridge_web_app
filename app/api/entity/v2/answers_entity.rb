module Entity
  module V2
    class AnswersEntity < Grape::Entity
      expose :id, :answer, :question, :question_id
    end
  end
end
