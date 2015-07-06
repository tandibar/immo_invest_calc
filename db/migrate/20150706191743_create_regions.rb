class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.references :user, index: true
      t.string :name
      t.integer :qm_min
      t.integer :qm_max
      t.integer :multiplier_min
      t.integer :multiplier_max
      t.integer :multiplier_avg

      t.timestamps
    end
  end
end
