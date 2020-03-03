require 'rails_helper'

describe 'Olympians Stats Request' do
  it 'sends statistics for total Olympians' do
    olympian = create(:olympian, name: 'Julie Brougham', sex: 'F', weight: 110, age: 62)
    medal = create(:medal, olympian_id: olympian.id)
    olympian = create(:olympian, name: 'Julie Brougham', sex: 'F', weight: 120, age: 22)
    medal = create(:medal, olympian_id: olympian.id)

    olympian_2 = create(:olympian, name: 'Ahmad Abughaush')
    medal_2 = create(:medal, olympian_id: olympian_2.id, medal: 'NA')
    olympian_2 = create(:olympian, name: 'Ahmad Abughaush', weight: 135, age: 28)
    medal_2 = create(:medal, olympian_id: olympian_2.id, medal: 'NA')

    get '/api/v1/olympian_stats'

    expect(response).to be_successful

    stats = JSON.parse(response.body)

    expect(stats['total_competing_olympians']).to eq(4)
    expect(stats['average_weight']['unit']).to eq('kg')
    expect(stats['average_weight']['male_olympians']).to eq(130)
    expect(stats['average_weight']['female_olympians']).to eq(115)
    expect(stats['average_age']).to eq(32.5)
  end
end