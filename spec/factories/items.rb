FactoryBot.define do
  factory :item do
    
  title  {Faker::Lorem.sentence}
  text   {Faker::Lorem.sentence}
  
  after(:build) do |item|
    item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
  end

  price  {5000}
  status_id {1}
  deliver_fee_id {1}
  lead_time_id {1}
  shop_from_id {1}
  category_id {1}
  association :user
  end
end
