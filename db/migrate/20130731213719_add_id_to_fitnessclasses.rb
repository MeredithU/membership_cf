class AddIdToFitnessclasses < ActiveRecord::Migration
  def change
    add_column :fitnessclasses, :membership_id, :integer
  end
end
