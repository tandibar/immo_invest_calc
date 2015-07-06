json.array!(@opportunities) do |opportunity|
  json.extract! opportunity, :id, :user_id, :address, :price_offering, :additional_expenses, :monthly_rent, :service_charges, :profit_method_1, :profit_method_2, :qm, :administration_costs_in_percent, :equity, :bank_rate, :cash_flow, :name
  json.url opportunity_url(opportunity, format: :json)
end
