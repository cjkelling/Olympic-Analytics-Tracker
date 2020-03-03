FactoryBot.define do
  factory :olympian do
    sport
    team
    name { 'Maha Abdalsalam' }
    sex { 'M' }
    age { 18 }
    height { 170 }
    weight { 125 }
    games { '2016 Summer' }
  end
end
