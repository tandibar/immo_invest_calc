class CreateOpportunitiesRegions < ActiveRecord::Migration
  def change
    create_table :opportunities_regions do |t|
      t.belongs_to :opportunity, index: true
      t.belongs_to :region, index: true
    end
  end
end
