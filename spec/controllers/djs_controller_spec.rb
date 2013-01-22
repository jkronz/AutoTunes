require 'spec_helper'

describe DjsController do

  # This should return the minimal set of attributes required to create a valid
  # Dj. As you add validations to Dj, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {"seed" => "A$AP Rocky"}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DjsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET show" do
    it "assigns the requested dj as @dj" do
      dj = Dj.create! valid_attributes
      get :show, {format: 'json', id: dj.id}, valid_session
      assigns(:dj).should eq(dj)
    end
  end


  describe "POST create" do
    describe "with valid params" do
      it "creates a new Dj" do
        expect {
          post :create, {format: 'json', dj: valid_attributes}, valid_session
        }.to change(Dj, :count).by(1)
      end

      it "assigns a newly created dj as @dj" do
        post :create, {format: 'json', dj: valid_attributes}, valid_session
        assigns(:dj).should be_a(Dj)
        assigns(:dj).should be_persisted
      end

      it "renders the created dj" do
        post :create, {format: 'json', dj: valid_attributes}, valid_session
        response.status.should == 201
      end
    end

    describe "with invalid params" do
      it "returns wrong f'n code." do
        post :create, {format: 'json', dj: {"seed" => ""}}, valid_session
        response.status.should == 422
      end
    end
  end

end
