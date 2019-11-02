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
end