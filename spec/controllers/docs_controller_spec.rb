require 'rails_helper'


RSpec.describe DocsController, type: :controller do

  let(:valid_attributes) {
    {
      title: "The Test",
      description: "Test test test",
      implementation: "test test test test test"
    }
  }

  let(:invalid_attributes) {
    {
      title: "T"
    }
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DocsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all docs as @docs" do
      doc = Doc.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:docs)).to match_array([doc])
    end
  end

  describe "GET #show" do
    it "assigns the requested doc as @doc" do
      doc = Doc.create! valid_attributes
      get :show, {:id => doc.to_param}, valid_session
      expect(assigns(:doc)).to eq(doc)
    end
  end

  describe "GET #new" do
    it "assigns a new doc as @doc" do
      get :new, {}, valid_session
      expect(assigns(:doc)).to be_a_new(Doc)
    end
  end

  describe "GET #edit" do
    it "assigns the requested doc as @doc" do
      doc = Doc.create! valid_attributes
      get :edit, {:id => doc.to_param}, valid_session
      expect(assigns(:doc)).to eq(doc)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Doc" do
        expect {
          post :create, {:doc => valid_attributes}, valid_session
        }.to change(Doc, :count).by(1)
      end

      it "assigns a newly created doc as @doc" do
        post :create, {:doc => valid_attributes}, valid_session
        expect(assigns(:doc)).to be_a(Doc)
        expect(assigns(:doc)).to be_persisted
      end

      it "redirects to the created doc" do
        post :create, {:doc => valid_attributes}, valid_session
        expect(response).to redirect_to(Doc.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved doc as @doc" do
        post :create, {:doc => invalid_attributes}, valid_session
        expect(assigns(:doc)).to be_a_new(Doc)
      end

      it "re-renders the 'new' template" do
        post :create, {:doc => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        {
          title: "Test Test",
        }
      }

      it "updates the requested doc" do
        doc = Doc.create! valid_attributes
        put :update, {:id => doc.to_param, :doc => new_attributes}, valid_session
        doc.reload
        expect(doc.title).to eq("Test Test")
      end

      it "assigns the requested doc as @doc" do
        doc = Doc.create! valid_attributes
        put :update, {:id => doc.to_param, :doc => valid_attributes}, valid_session
        expect(assigns(:doc)).to eq(doc)
      end

      it "redirects to the doc" do
        doc = Doc.create! valid_attributes
        put :update, {:id => doc.to_param, :doc => valid_attributes}, valid_session
        expect(response).to redirect_to(doc)
      end
    end

    context "with invalid params" do
      it "assigns the doc as @doc" do
        doc = Doc.create! valid_attributes
        put :update, {:id => doc.to_param, :doc => invalid_attributes}, valid_session
        expect(assigns(:doc)).to eq(doc)
      end

      it "re-renders the 'edit' template" do
        doc = Doc.create! valid_attributes
        put :update, {:id => doc.to_param, :doc => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested doc" do
      doc = Doc.create! valid_attributes
      expect {
        delete :destroy, {:id => doc.to_param}, valid_session
      }.to change(Doc, :count).by(-1)
    end

    it "redirects to the docs list" do
      doc = Doc.create! valid_attributes
      delete :destroy, {:id => doc.to_param}, valid_session
      expect(response).to redirect_to(docs_url)
    end
  end

end
