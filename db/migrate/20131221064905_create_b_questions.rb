class CreateBQuestions < ActiveRecord::Migration
  def change
    create_table :b_questions do |t|
      t.text :content

      t.timestamps
    end
  end
end
