class CreateEmailvalidations < ActiveRecord::Migration
  def change
    create_table :emailvalidations do |t|
      t.integer :user_id
      t.string :key

      t.timestamps
    end
  end
end
