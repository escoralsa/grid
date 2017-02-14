require "spec_helper"

describe PaceProgramCustomersController do
  describe "routing" do

    it "routes to #index" do
      get("/pace_program_customers").should route_to("pace_program_customers#index")
    end

    it "routes to #new" do
      get("/pace_program_customers/new").should route_to("pace_program_customers#new")
    end

    it "routes to #show" do
      get("/pace_program_customers/1").should route_to("pace_program_customers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/pace_program_customers/1/edit").should route_to("pace_program_customers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/pace_program_customers").should route_to("pace_program_customers#create")
    end

    it "routes to #update" do
      put("/pace_program_customers/1").should route_to("pace_program_customers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/pace_program_customers/1").should route_to("pace_program_customers#destroy", :id => "1")
    end

  end
end
