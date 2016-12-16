class RenameUrlColumnToUsers < ActiveRecord::Migration
  def change
    rename_column :users, :url, :hp_blog
  end
end
