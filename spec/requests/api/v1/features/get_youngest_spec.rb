require 'rails_helper'

describe 'Youngest Olympian Data Request' do
  it 'sends data for youngest Olympian' do
    olympian = create(:olympian)
    medal = create(:medal, olympian_id: olympian.id)

    olympian_2 = create(:olympian, name: 'Ahmad Abughaush', age: 13)
    medal_2 = create(:medal, olympian_id: olympian_2.id, medal: 'NA')

    get '/api/v1/olympians?age=youngest'

    expect(response).to be_successful

    olympians = JSON.parse(response.body)

    expect(olympians['name']).to eq('Ahmad Abughaush')
    expect(olympians['team']).to eq('Egypt')
    expect(olympians['age']).to eq(13)
    expect(olympians['sport']).to eq('Diving')
    expect(olympians['total_medals_won']).to eq(0)
  end
end
