class AddSnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :self_intro, :text
    add_column :users, :url, :text
    add_column :users, :facebook, :text
    add_column :users, :twitter, :string
    add_column :users, :instagram, :string
  end
end
