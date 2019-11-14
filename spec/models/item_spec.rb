require 'rails_helper'
describe Item do
  describe '#create' do
    it "is invalid without a image" do
      item = build(:item)
      item.valid?
      expect(item.errors[:image]).to include("を1枚以上指定してください")
    end
    it "is invalid without a price" do
      item = build(:item, price: nil)
      item.valid?
      expect(item.errors[:price]).to include("can't be blank")
    end
    it "is invalid without a title" do
      item = build(:item, title: nil)
      item.valid?
      expect(item.errors[:title]).to include("can't be blank")
    end
    it "is invalid without a description" do
      item = build(:item, description: nil)
      item.valid?
      expect(item.errors[:description]).to include("can't be blank")
    end
    it "is invalid without a status" do
      item = build(:item, status: nil)
      item.valid?
      expect(item.errors[:status]).to include("can't be blank")
    end
    it "is invalid without a shipping_charge" do
      item = build(:item, shipping_charge: nil)
      item.valid?
      expect(item.errors[:shipping_charge]).to include("can't be blank")
    end
    it "is invalid without a shipping_method" do
      item = build(:item, shipping_method: nil)
      item.valid?
      expect(item.errors[:shipping_method]).to include("can't be blank")
    end
    it "is invalid without a delivery_source" do
      item = build(:item, delivery_source: nil)
      item.valid?
      expect(item.errors[:delivery_source]).to include("can't be blank")
    end
  end
  it "is invalid without a shipping_day" do
    item = build(:item, shipping_day: nil)
    item.valid?
    expect(item.errors[:shipping_day]).to include("can't be blank")
  end
end
