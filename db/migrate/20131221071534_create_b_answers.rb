class CreateBAnswers < ActiveRecord::Migration
  def change
    create_table :b_answers do |t|
      t.string :answer

      t.timestamps
    end
  end
end
