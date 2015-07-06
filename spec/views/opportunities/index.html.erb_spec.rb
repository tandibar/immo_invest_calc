require 'rails_helper'

RSpec.describe "opportunities/index", type: :view do
  before(:each) do
    assign(:opportunities, [
      Opportunity.create!(
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
      ),
      Opportunity.create!(
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
      )
    ])
  end

  it "renders a list of opportunities" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
