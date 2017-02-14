require "spec_helper"

describe PaceProgramsController do
  describe "routing" do

    it "routes to #index" do
      get("/pace_programs").should route_to("pace_programs#index")
    end

    it "routes to #new" do
      get("/pace_programs/new").should route_to("pace_programs#new")
    end

    it "routes to #show" do
      get("/pace_programs/1").should route_to("pace_programs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/pace_programs/1/edit").should route_to("pace_programs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/pace_programs").should route_to("pace_programs#create")
    end

    it "routes to #update" do
      put("/pace_programs/1").should route_to("pace_programs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/pace_programs/1").should route_to("pace_programs#destroy", :id => "1")
    end

  end
end
