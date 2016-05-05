require 'spec_helper'

describe "situations/show" do
  before(:each) do
    @situation = assign(:situation, stub_model(Situation,
      :name => "Name",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
  end
end
