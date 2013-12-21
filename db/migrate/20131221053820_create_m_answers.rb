class CreateMAnswers < ActiveRecord::Migration
  def change
    create_table :m_answers do |t|
      t.boolean :check
      t.string :answer
      t.string :m_question_id

      t.timestamps
    end
  end
end
