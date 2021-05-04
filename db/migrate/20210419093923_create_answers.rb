class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.text :ans_code
      t.string :language
      t.integer :time_taken
      t.string :remark
      t.belongs_to :question
      t.belongs_to :user

      t.timestamps
    end
  end
end
