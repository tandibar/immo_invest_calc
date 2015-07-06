require 'rails_helper'

RSpec.describe "opportunities/show", type: :view do
  before(:each) do
    @opportunity = assign(:opportunity, Opportunity.create!(
      :user => nil,
      :address => "Address",
      :price_offering => 1,
      :additional_expenses => 2,
      :monthly_rent => "9.99",
      :service_charges => 3,
      :profit_method_1 => 4,
      :profit_method_2 => 5,
      :qm => 6,
      :administration_costs_in_percent => 7,
      :equity => 8,
      :bank_rate => "9.99",
      :cash_flow => "9.99",
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/8/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Name/)
  end
end
