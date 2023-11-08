FactoryBot.define do
  factory :reservation do
    user
    unit_id { 1 }
    date { Date.today }
  end
end
