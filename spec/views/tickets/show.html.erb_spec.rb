require 'spec_helper'

describe "tickets/show" do
  before(:each) do
    @ticket = assign(:ticket, stub_model(Ticket,
      :contactName => "Contact Name",
      :notes => "MyText",
      :employee => nil,
      :customer => nil,
      :priority => nil,
      :situation => nil,
      :category => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Contact Name/)
    rendered.should match(/MyText/)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
  end
end
