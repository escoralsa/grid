require 'spec_helper'

describe "pace_programs/new" do
  before(:each) do
    assign(:pace_program, stub_model(PaceProgram,
      :name => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new pace_program form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", pace_programs_path, "post" do
      assert_select "input#pace_program_name[name=?]", "pace_program[name]"
      assert_select "input#pace_program_description[name=?]", "pace_program[description]"
    end
  end
end
