require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe PaceProgramsController do

  # This should return the minimal set of attributes required to create a valid
  # PaceProgram. As you add validations to PaceProgram, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PaceProgramsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all pace_programs as @pace_programs" do
      pace_program = PaceProgram.create! valid_attributes
      get :index, {}, valid_session
      assigns(:pace_programs).should eq([pace_program])
    end
  end

  describe "GET show" do
    it "assigns the requested pace_program as @pace_program" do
      pace_program = PaceProgram.create! valid_attributes
      get :show, {:id => pace_program.to_param}, valid_session
      assigns(:pace_program).should eq(pace_program)
    end
  end

  describe "GET new" do
    it "assigns a new pace_program as @pace_program" do
      get :new, {}, valid_session
      assigns(:pace_program).should be_a_new(PaceProgram)
    end
  end

  describe "GET edit" do
    it "assigns the requested pace_program as @pace_program" do
      pace_program = PaceProgram.create! valid_attributes
      get :edit, {:id => pace_program.to_param}, valid_session
      assigns(:pace_program).should eq(pace_program)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new PaceProgram" do
        expect {
          post :create, {:pace_program => valid_attributes}, valid_session
        }.to change(PaceProgram, :count).by(1)
      end

      it "assigns a newly created pace_program as @pace_program" do
        post :create, {:pace_program => valid_attributes}, valid_session
        assigns(:pace_program).should be_a(PaceProgram)
        assigns(:pace_program).should be_persisted
      end

      it "redirects to the created pace_program" do
        post :create, {:pace_program => valid_attributes}, valid_session
        response.should redirect_to(PaceProgram.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved pace_program as @pace_program" do
        # Trigger the behavior that occurs when invalid params are submitted
        PaceProgram.any_instance.stub(:save).and_return(false)
        post :create, {:pace_program => { "name" => "invalid value" }}, valid_session
        assigns(:pace_program).should be_a_new(PaceProgram)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        PaceProgram.any_instance.stub(:save).and_return(false)
        post :create, {:pace_program => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested pace_program" do
        pace_program = PaceProgram.create! valid_attributes
        # Assuming there are no other pace_programs in the database, this
        # specifies that the PaceProgram created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        PaceProgram.any_instance.should_receive(:update).with({ "name" => "MyString" })
        put :update, {:id => pace_program.to_param, :pace_program => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested pace_program as @pace_program" do
        pace_program = PaceProgram.create! valid_attributes
        put :update, {:id => pace_program.to_param, :pace_program => valid_attributes}, valid_session
        assigns(:pace_program).should eq(pace_program)
      end

      it "redirects to the pace_program" do
        pace_program = PaceProgram.create! valid_attributes
        put :update, {:id => pace_program.to_param, :pace_program => valid_attributes}, valid_session
        response.should redirect_to(pace_program)
      end
    end

    describe "with invalid params" do
      it "assigns the pace_program as @pace_program" do
        pace_program = PaceProgram.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PaceProgram.any_instance.stub(:save).and_return(false)
        put :update, {:id => pace_program.to_param, :pace_program => { "name" => "invalid value" }}, valid_session
        assigns(:pace_program).should eq(pace_program)
      end

      it "re-renders the 'edit' template" do
        pace_program = PaceProgram.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PaceProgram.any_instance.stub(:save).and_return(false)
        put :update, {:id => pace_program.to_param, :pace_program => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested pace_program" do
      pace_program = PaceProgram.create! valid_attributes
      expect {
        delete :destroy, {:id => pace_program.to_param}, valid_session
      }.to change(PaceProgram, :count).by(-1)
    end

    it "redirects to the pace_programs list" do
      pace_program = PaceProgram.create! valid_attributes
      delete :destroy, {:id => pace_program.to_param}, valid_session
      response.should redirect_to(pace_programs_url)
    end
  end

end
