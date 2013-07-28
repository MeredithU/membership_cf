class CreateFitnessclasses < ActiveRecord::Migration
  def change
    create_table :fitnessclasses do |t|

      t.timestamps
    end
  end
end
