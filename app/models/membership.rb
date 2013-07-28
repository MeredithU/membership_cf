class Membership < ActiveRecord::Base
  attr_accessible :enddate, :fitnessclass_id, :startdate, :type, :user_id

  belongs_to :fitnessclass
  belongs_to :user
end
