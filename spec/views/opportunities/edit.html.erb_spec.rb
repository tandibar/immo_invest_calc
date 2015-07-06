require 'rails_helper'

RSpec.describe "opportunities/edit", type: :view do
  before(:each) do
    @opportunity = assign(:opportunity, Opportunity.create!(
      :user => nil,
      :address => "MyString",
      :price_offering => 1,
      :additional_expenses => 1,
      :monthly_rent => "9.99",
      :service_charges => 1,
      :profit_method_1 => 1,
      :profit_method_2 => 1,
      :qm => 1,
      :administration_costs_in_percent => 1,
      :equity => 1,
      :bank_rate => "9.99",
      :cash_flow => "9.99",
      :name => "MyString"
    ))
  end

  it "renders the edit opportunity form" do
    render

    assert_select "form[action=?][method=?]", opportunity_path(@opportunity), "post" do

      assert_select "input#opportunity_user_id[name=?]", "opportunity[user_id]"

      assert_select "input#opportunity_address[name=?]", "opportunity[address]"

      assert_select "input#opportunity_price_offering[name=?]", "opportunity[price_offering]"

      assert_select "input#opportunity_additional_expenses[name=?]", "opportunity[additional_expenses]"

      assert_select "input#opportunity_monthly_rent[name=?]", "opportunity[monthly_rent]"

      assert_select "input#opportunity_service_charges[name=?]", "opportunity[service_charges]"

      assert_select "input#opportunity_profit_method_1[name=?]", "opportunity[profit_method_1]"

      assert_select "input#opportunity_profit_method_2[name=?]", "opportunity[profit_method_2]"

      assert_select "input#opportunity_qm[name=?]", "opportunity[qm]"

      assert_select "input#opportunity_administration_costs_in_percent[name=?]", "opportunity[administration_costs_in_percent]"

      assert_select "input#opportunity_equity[name=?]", "opportunity[equity]"

      assert_select "input#opportunity_bank_rate[name=?]", "opportunity[bank_rate]"

      assert_select "input#opportunity_cash_flow[name=?]", "opportunity[cash_flow]"

      assert_select "input#opportunity_name[name=?]", "opportunity[name]"
    end
  end
end
