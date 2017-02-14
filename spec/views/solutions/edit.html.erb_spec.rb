require 'spec_helper'

describe "solutions/edit" do
  before(:each) do
    @solution = assign(:solution, stub_model(Solution,
      :description => "MyText",
      :file => "MyString",
      :solution => "MyText"
    ))
  end

  it "renders the edit solution form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", solution_path(@solution), "post" do
      assert_select "textarea#solution_description[name=?]", "solution[description]"
      assert_select "input#solution_file[name=?]", "solution[file]"
      assert_select "textarea#solution_solution[name=?]", "solution[solution]"
    end
  end
end
