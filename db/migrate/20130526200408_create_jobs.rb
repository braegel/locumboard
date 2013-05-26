class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :provider
      t.date :startdate
      t.date :enddate
      t.string :specialization
      t.text :comment

      t.timestamps
    end
  end
end
