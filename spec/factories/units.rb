FactoryBot.define do
  factory :unit do
    name { 'Apartment 1' }
    unit_type { 'Duplex' }
    price { 10_000 }
    description { 'This is a nice apartment' }
    location { 'Cairo' }
  end
end
