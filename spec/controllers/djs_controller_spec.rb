require 'spec_helper'

describe DjsController do

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
          post :create, {format: 'json', "seed" => "A$AP Rocky"}, valid_session
        }.to change(Dj, :count).by(1)
      end

      it "assigns a newly created dj as @dj" do
        post :create, {format: 'json', "seed" => "A$AP Rocky"}, valid_session
        assigns(:dj).should be_a(Dj)
        assigns(:dj).should be_persisted
      end

      it "renders the created dj" do
        post :create, {format: 'json', "seed" => "A$AP Rocky"}, valid_session
        response.status.should == 201
      end
    end

    describe "with invalid params" do
      it "returns wrong f'n code." do
        post :create, {format: 'json', "seed" => ""}, valid_session
        response.status.should == 422
      end
    end
  end

end
