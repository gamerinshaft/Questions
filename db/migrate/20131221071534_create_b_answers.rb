class CreateBAnswers < ActiveRecord::Migration
  def change
    create_table :b_answers do |t|
      t.string :answer
      t.string :b_question_id
      t.timestamps
    end
  end
end
