require 'spec_helper'

describe "situations/edit" do
  before(:each) do
    @situation = assign(:situation, stub_model(Situation,
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit situation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", situation_path(@situation), "post" do
      assert_select "input#situation_name[name=?]", "situation[name]"
      assert_select "textarea#situation_description[name=?]", "situation[description]"
    end
  end
end
