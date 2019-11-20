require 'rails_helper'

describe PurchasesController do
  let(:item) { create(:item) }
  
  describe "GET #show" do
    before { get :show, params: { item_id: item.id } }
    it "assigns the requested item to @item" do
      expect(assigns(:item)).to eq item
    end
    it "renders the :show template" do
      expect(response).to render_template :show
    end
  end

  describe "GET #new" do
    before { get :new, params: { item_id: item.id } }
    let(:item) { build(:item) }
    it "assigns the requested item to @item" do
      expect(assigns(:item[0])).to eq item[0]
    end
    it "renders the :new template" do
      expect(response).to render_template :new
    end
  end

  describe "GET #pay" do
    it "assigns the requested item to @item" do
      expect(assigns(:item)).to match(item)
    end
      it "renders the :new template" do
        expect(response).to redirect_to :show
      end
  end

end
