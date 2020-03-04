require 'rails_helper'

describe 'Oldest Olympian Data Request' do
  it 'sends data for youngest Olympian' do
    olympian = create(:olympian)
    create(:medal, olympian_id: olympian.id)

    olympian2 = create(:olympian, name: 'Julie Brougham', age: 62)
    create(:medal, olympian_id: olympian2.id, medal: 'NA')

    get '/api/v1/olympians?age=oldest'

    expect(response).to be_successful

    olympians = JSON.parse(response.body)

    expect(olympians['name']).to eq('Julie Brougham')
    expect(olympians['team']).to eq('Egypt')
    expect(olympians['age']).to eq(62)
    expect(olympians['sport']).to eq('Diving')
    expect(olympians['total_medals_won']).to eq(0)
  end
end
