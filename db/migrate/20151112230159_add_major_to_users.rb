class AddMajorToUsers < ActiveRecord::Migration
  def change
    add_column :users, :year, :string,  :default => "Unknown"
    add_column :users, :major, :string, :default => "Unknown"
    add_column :users, :avatar, :text,  :default => "husky.png" # fix this stuff!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  end
end
