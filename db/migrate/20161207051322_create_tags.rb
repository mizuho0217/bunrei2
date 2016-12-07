class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.integer :keyword

      t.timestamps null: false
    end
  end
end
