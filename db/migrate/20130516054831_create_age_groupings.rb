class CreateAgeGroupings < ActiveRecord::Migration
  def change
    create_table :age_groupings do |t|
      t.integer :age_group_id
      t.integer :product_id

      t.timestamps
    end
  end
end
