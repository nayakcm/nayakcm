class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :title
      t.text :description
      t.string :level
      t.integer :time_taken

      t.timestamps
    end
  end
end
