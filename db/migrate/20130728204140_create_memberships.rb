class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.integer :user_id
      t.integer :fitnessclass_id
      t.string :type
      t.datetime :startdate
      t.datetime :enddate

      t.timestamps
    end
  end
end
