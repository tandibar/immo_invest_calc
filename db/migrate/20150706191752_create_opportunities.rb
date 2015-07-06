class CreateOpportunities < ActiveRecord::Migration
  def change
    create_table :opportunities do |t|
      t.references :user, index: true
      t.string :address
      t.integer :price_offering
      t.integer :additional_expenses
      t.decimal :monthly_rent
      t.integer :service_charges
      t.integer :profit_method_1
      t.integer :profit_method_2
      t.integer :qm
      t.integer :administration_costs_in_percent
      t.integer :equity
      t.decimal :bank_rate
      t.decimal :cash_flow
      t.string :name

      t.timestamps
    end
  end
end
