require 'rails_helper'

describe ItemsController do

  describe "GET #index" do
    it "renders the :index template" do
      get :index
      expect(response).to render_template :index
    end
    it "assigns the requested item to @item" do
      user = create(:user)
      items = create_list(:item, 3)
      get :index
      expect(assigns(:items)).to match(items)
    end
  end
  describe "GET #edit" do
    it "renders the :edit template" do
      user = create(:user)
      item = create(:item)
      get :edit, params: {id: item.id}
      expect(response).to render_template :edit
    end
    it "assigns the requested item to @item" do
      user = create(:user)
      item = create(:item)
      get :edit, params: {id: item.id}
      expect(assigns(:item)).to match(item)
    end
  end
  describe "GET #show" do
    it "assigns the requested item to @item" do
      item = create(:item)
      get :show, params: { id: 1 }
      expect(assigns(:item)).to eq(item)
    end
    it "renders the :show template" do
      get :show, params: { id: 1 }
      expect(response).to render_template :show
    end
  end
  describe "DELETE #destroy" do
    it "redirect to listing_user_path" do
      user = create(:user)
      item = create(:item)
      delete :destroy, params: {id: item.id}
      expect(response).to redirect_to(listing_user_path(user))
    end
  end 
  describe "DELETE #destroy" do
    it "redirect to listing_user_path" do
      user = create(:user)
      item = create(:item)
      delete :destroy, params: {id: item.id}
      expect(response).to redirect_to(listing_user_path(user))
    end
  end 
end
