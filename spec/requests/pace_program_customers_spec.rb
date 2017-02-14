require 'spec_helper'

describe "PaceProgramCustomers" do
  describe "GET /pace_program_customers" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get pace_program_customers_path
      response.status.should be(200)
    end
  end
end
