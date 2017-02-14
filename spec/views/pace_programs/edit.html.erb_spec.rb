require 'spec_helper'

describe "pace_programs/edit" do
  before(:each) do
    @pace_program = assign(:pace_program, stub_model(PaceProgram,
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit pace_program form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", pace_program_path(@pace_program), "post" do
      assert_select "input#pace_program_name[name=?]", "pace_program[name]"
      assert_select "input#pace_program_description[name=?]", "pace_program[description]"
    end
  end
end
