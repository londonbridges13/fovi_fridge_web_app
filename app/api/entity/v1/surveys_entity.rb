module Entity
  module V1
    class SurveysEntity < Grape::Entity
      expose :id, :question, :image 
    end
  end
end
