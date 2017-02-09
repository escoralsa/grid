require 'spec_helper'

describe "attacheds/edit" do
  before(:each) do
    @attached = assign(:attached, stub_model(Attached,
      :description => "MyString",
      :file => "MyString",
      :ticket => nil
    ))
  end

  it "renders the edit attached form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", attached_path(@attached), "post" do
      assert_select "input#attached_description[name=?]", "attached[description]"
      assert_select "input#attached_file[name=?]", "attached[file]"
      assert_select "input#attached_ticket[name=?]", "attached[ticket]"
    end
  end
end
