class AgeGrouping < ActiveRecord::Base
  attr_accessible :age_group_id, :product_id

  belongs_to :product
  belongs_to :age_group
end
