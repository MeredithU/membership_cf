class AddDetailsToFitnessclass < ActiveRecord::Migration
  def change
    add_column :fitnessclasses, :title, :string
    add_column :fitnessclasses, :type, :string
    add_column :fitnessclasses, :level, :string
    add_column :fitnessclasses, :startdate, :datetime
    add_column :fitnessclasses, :enddate, :datetime
  end
end
