class AgeGroup < ActiveRecord::Base
  attr_accessible :description

  has_many :age_groupings
  has_many :products, through: :age_groupings
end
