require 'spec_helper'

describe "solutions/new" do
  before(:each) do
    assign(:solution, stub_model(Solution,
      :description => "MyText",
      :file => "MyString",
      :solution => "MyText"
    ).as_new_record)
  end

  it "renders new solution form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", solutions_path, "post" do
      assert_select "textarea#solution_description[name=?]", "solution[description]"
      assert_select "input#solution_file[name=?]", "solution[file]"
      assert_select "textarea#solution_solution[name=?]", "solution[solution]"
    end
  end
end
