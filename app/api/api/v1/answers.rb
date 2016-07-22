module API
  module V1
    class Answers < Grape::API
      format :json
      resource :answers do
        desc 'Add Answer to Survey'
        post do
          Answer.create!({
                         answer: params[:answer],
                         question_id: params[:question_id],
                         question: params[:question]
                     })
        end
      end
    end
  end
end
