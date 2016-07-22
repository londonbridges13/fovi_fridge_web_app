class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :answer
      t.Int :question_id
      t.string :question

      t.timestamps null: false
    end
  end
end
