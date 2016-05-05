require 'spec_helper'

describe "activities/new" do
  before(:each) do
    assign(:activity, stub_model(Activity,
      :description => "MyText",
      :employee => nil,
      :ticket => nil
    ).as_new_record)
  end

  it "renders new activity form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", activities_path, "post" do
      assert_select "textarea#activity_description[name=?]", "activity[description]"
      assert_select "input#activity_employee[name=?]", "activity[employee]"
      assert_select "input#activity_ticket[name=?]", "activity[ticket]"
    end
  end
end
