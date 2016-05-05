require 'spec_helper'

describe "activities/show" do
  before(:each) do
    @activity = assign(:activity, stub_model(Activity,
      :description => "MyText",
      :employee => nil,
      :ticket => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
