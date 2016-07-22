class Answer < ActiveRecord::Base
  validates_presence_of :question
  validates_presence_of :question_id
  validates_presence_of :answer
end
