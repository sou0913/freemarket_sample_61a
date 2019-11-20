FactoryBot.define do
  factory :item do
    price             {3000}
    description       {"佐々木が3年前に購入したパソコンです"}
    title             {"佐々木のパソコン"}
    status            {3}
    shipping_charge   {1}
    shipping_method   {1}
    delivery_source   {13}
    shipping_day      {2}
    user_id           {1}
    id                {1}
  end
end
