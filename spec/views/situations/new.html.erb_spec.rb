require 'spec_helper'

describe "situations/new" do
  before(:each) do
    assign(:situation, stub_model(Situation,
      :name => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new situation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", situations_path, "post" do
      assert_select "input#situation_name[name=?]", "situation[name]"
      assert_select "textarea#situation_description[name=?]", "situation[description]"
    end
  end
end
