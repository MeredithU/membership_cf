class RemoveTypeFromFitnessclasses < ActiveRecord::Migration
  def up
    remove_column :fitnessclasses, :type
  end

  def down
    add_column :fitnessclasses, :type, :string
  end
end
