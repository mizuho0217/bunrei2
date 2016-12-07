class CreateExamples < ActiveRecord::Migration
  def change
    create_table :examples do |t|
      t.string :title
      t.integer :user_id
      t.text :text

      t.timestamps null: false
    end
  end
end
