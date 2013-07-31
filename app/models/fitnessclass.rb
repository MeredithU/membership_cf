class Fitnessclass < ActiveRecord::Base
  attr_accessible :title, :level, :startdate, :enddate

  has_many :memberships
  has_many :users, :through => :memberships
end
