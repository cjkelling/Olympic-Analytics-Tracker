require 'rails_helper'

describe 'Olympians Data Request' do
  it 'sends data for all Olympians' do
    olympian = create(:olympian)
    medal = create(:medal, olympian_id: olympian.id)

    olympian_2 = create(:olympian, name: 'Ahmad Abughaush')
    medal_2 = create(:medal, medal: 'NA')

    get '/api/v1/olympians'

    expect(response).to be_successful

    olympians = JSON.parse(response.body)

    expect(olympians.count).to eq(2)

    expect(olympians[0]['name']).to eq('Maha Abdalsalam')
    expect(olympians[0]['team']).to eq('Egypt')
    expect(olympians[0]['age']).to eq(18)
    expect(olympians[0]['sport']).to eq('Diving')
    expect(olympians[0]['total_medals_won']).to eq(1)

    expect(olympians[1]['name']).to eq('Ahmad Abughaush')
    expect(olympians[1]['team']).to eq('Egypt')
    expect(olympians[1]['age']).to eq(18)
    expect(olympians[1]['sport']).to eq('Diving')
    expect(olympians[1]['total_medals_won']).to eq(0)
  end
end
