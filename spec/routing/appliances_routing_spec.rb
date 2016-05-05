require "spec_helper"

describe AppliancesController do
  describe "routing" do

    it "routes to #index" do
      get("/appliances").should route_to("appliances#index")
    end

    it "routes to #new" do
      get("/appliances/new").should route_to("appliances#new")
    end

    it "routes to #show" do
      get("/appliances/1").should route_to("appliances#show", :id => "1")
    end

    it "routes to #edit" do
      get("/appliances/1/edit").should route_to("appliances#edit", :id => "1")
    end

    it "routes to #create" do
      post("/appliances").should route_to("appliances#create")
    end

    it "routes to #update" do
      put("/appliances/1").should route_to("appliances#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/appliances/1").should route_to("appliances#destroy", :id => "1")
    end

  end
end
