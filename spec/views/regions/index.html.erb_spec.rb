require 'rails_helper'

RSpec.describe "regions/index", type: :view do
  before(:each) do
    assign(:regions, [
      Region.create!(
        :user => nil,
        :name => "Name",
        :qm_min => 1,
        :qm_max => 2,
        :multiplier_min => 3,
        :multiplier_max => 4,
        :multiplier_avg => 5
      ),
      Region.create!(
        :user => nil,
        :name => "Name",
        :qm_min => 1,
        :qm_max => 2,
        :multiplier_min => 3,
        :multiplier_max => 4,
        :multiplier_avg => 5
      )
    ])
  end

  it "renders a list of regions" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
