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

describe SubmitRequestsController do

  # This should return the minimal set of attributes required to create a valid
  # SubmitRequest. As you add validations to SubmitRequest, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "user" => "" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # SubmitRequestsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all submit_requests as @submit_requests" do
      submit_request = SubmitRequest.create! valid_attributes
      get :index, {}, valid_session
      assigns(:submit_requests).should eq([submit_request])
    end
  end

  describe "GET show" do
    it "assigns the requested submit_request as @submit_request" do
      submit_request = SubmitRequest.create! valid_attributes
      get :show, {:id => submit_request.to_param}, valid_session
      assigns(:submit_request).should eq(submit_request)
    end
  end

  describe "GET new" do
    it "assigns a new submit_request as @submit_request" do
      get :new, {}, valid_session
      assigns(:submit_request).should be_a_new(SubmitRequest)
    end
  end

  describe "GET edit" do
    it "assigns the requested submit_request as @submit_request" do
      submit_request = SubmitRequest.create! valid_attributes
      get :edit, {:id => submit_request.to_param}, valid_session
      assigns(:submit_request).should eq(submit_request)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new SubmitRequest" do
        expect {
          post :create, {:submit_request => valid_attributes}, valid_session
        }.to change(SubmitRequest, :count).by(1)
      end

      it "assigns a newly created submit_request as @submit_request" do
        post :create, {:submit_request => valid_attributes}, valid_session
        assigns(:submit_request).should be_a(SubmitRequest)
        assigns(:submit_request).should be_persisted
      end

      it "redirects to the created submit_request" do
        post :create, {:submit_request => valid_attributes}, valid_session
        response.should redirect_to(SubmitRequest.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved submit_request as @submit_request" do
        # Trigger the behavior that occurs when invalid params are submitted
        SubmitRequest.any_instance.stub(:save).and_return(false)
        post :create, {:submit_request => { "user" => "invalid value" }}, valid_session
        assigns(:submit_request).should be_a_new(SubmitRequest)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        SubmitRequest.any_instance.stub(:save).and_return(false)
        post :create, {:submit_request => { "user" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested submit_request" do
        submit_request = SubmitRequest.create! valid_attributes
        # Assuming there are no other submit_requests in the database, this
        # specifies that the SubmitRequest created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        SubmitRequest.any_instance.should_receive(:update).with({ "user" => "" })
        put :update, {:id => submit_request.to_param, :submit_request => { "user" => "" }}, valid_session
      end

      it "assigns the requested submit_request as @submit_request" do
        submit_request = SubmitRequest.create! valid_attributes
        put :update, {:id => submit_request.to_param, :submit_request => valid_attributes}, valid_session
        assigns(:submit_request).should eq(submit_request)
      end

      it "redirects to the submit_request" do
        submit_request = SubmitRequest.create! valid_attributes
        put :update, {:id => submit_request.to_param, :submit_request => valid_attributes}, valid_session
        response.should redirect_to(submit_request)
      end
    end

    describe "with invalid params" do
      it "assigns the submit_request as @submit_request" do
        submit_request = SubmitRequest.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        SubmitRequest.any_instance.stub(:save).and_return(false)
        put :update, {:id => submit_request.to_param, :submit_request => { "user" => "invalid value" }}, valid_session
        assigns(:submit_request).should eq(submit_request)
      end

      it "re-renders the 'edit' template" do
        submit_request = SubmitRequest.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        SubmitRequest.any_instance.stub(:save).and_return(false)
        put :update, {:id => submit_request.to_param, :submit_request => { "user" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested submit_request" do
      submit_request = SubmitRequest.create! valid_attributes
      expect {
        delete :destroy, {:id => submit_request.to_param}, valid_session
      }.to change(SubmitRequest, :count).by(-1)
    end

    it "redirects to the submit_requests list" do
      submit_request = SubmitRequest.create! valid_attributes
      delete :destroy, {:id => submit_request.to_param}, valid_session
      response.should redirect_to(submit_requests_url)
    end
  end

end
