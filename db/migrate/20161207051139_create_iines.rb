class CreateIines < ActiveRecord::Migration
  def change
    create_table :iines do |t|
      t.integer :user_id
      t.integer :example_id

      t.timestamps null: false
    end
  end
end
