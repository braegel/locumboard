class AddEmailvalidatedToUsers < ActiveRecord::Migration
  def change
    add_column :users, :emailvalidated, :boolean
  end
end
