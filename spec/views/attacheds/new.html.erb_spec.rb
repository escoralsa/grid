require 'spec_helper'

describe "attacheds/new" do
  before(:each) do
    assign(:attached, stub_model(Attached,
      :description => "MyString",
      :file => "MyString",
      :ticket => nil
    ).as_new_record)
  end

  it "renders new attached form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", attacheds_path, "post" do
      assert_select "input#attached_description[name=?]", "attached[description]"
      assert_select "input#attached_file[name=?]", "attached[file]"
      assert_select "input#attached_ticket[name=?]", "attached[ticket]"
    end
  end
end
