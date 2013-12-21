class CreateMQuestions < ActiveRecord::Migration
  def change
    create_table :m_questions do |t|
      t.text :content

      t.timestamps
    end
  end
end
