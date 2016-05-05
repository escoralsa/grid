require 'spec_helper'

describe "Situations" do
  describe "GET /situations" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get situations_path
      response.status.should be(200)
    end
  end
end
