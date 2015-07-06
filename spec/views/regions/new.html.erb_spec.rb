require 'rails_helper'

RSpec.describe "regions/new", type: :view do
  before(:each) do
    assign(:region, Region.new(
      :user => nil,
      :name => "MyString",
      :qm_min => 1,
      :qm_max => 1,
      :multiplier_min => 1,
      :multiplier_max => 1,
      :multiplier_avg => 1
    ))
  end

  it "renders new region form" do
    render

    assert_select "form[action=?][method=?]", regions_path, "post" do

      assert_select "input#region_user_id[name=?]", "region[user_id]"

      assert_select "input#region_name[name=?]", "region[name]"

      assert_select "input#region_qm_min[name=?]", "region[qm_min]"

      assert_select "input#region_qm_max[name=?]", "region[qm_max]"

      assert_select "input#region_multiplier_min[name=?]", "region[multiplier_min]"

      assert_select "input#region_multiplier_max[name=?]", "region[multiplier_max]"

      assert_select "input#region_multiplier_avg[name=?]", "region[multiplier_avg]"
    end
  end
end
