FactoryBot.define do
  factory :medal do
    event
    olympian
    medal { 'Gold' }
  end
end
