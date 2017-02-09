require "spec_helper"

describe AttachedsController do
  describe "routing" do

    it "routes to #index" do
      get("/attacheds").should route_to("attacheds#index")
    end

    it "routes to #new" do
      get("/attacheds/new").should route_to("attacheds#new")
    end

    it "routes to #show" do
      get("/attacheds/1").should route_to("attacheds#show", :id => "1")
    end

    it "routes to #edit" do
      get("/attacheds/1/edit").should route_to("attacheds#edit", :id => "1")
    end

    it "routes to #create" do
      post("/attacheds").should route_to("attacheds#create")
    end

    it "routes to #update" do
      put("/attacheds/1").should route_to("attacheds#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/attacheds/1").should route_to("attacheds#destroy", :id => "1")
    end

  end
end
