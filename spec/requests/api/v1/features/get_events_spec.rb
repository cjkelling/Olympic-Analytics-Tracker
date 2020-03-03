require 'rails_helper'

describe 'Events Data Request' do
  it 'sends data for all Events' do
    sport = create(:sport, sport: 'Diving')

    event = create(:event, sport_id: sport.id)
    event2 = create(:event, event: 'The Small Dive', sport_id: sport.id)

    sport2 = create(:sport, sport: 'Wrestling')
    event3 = create(:event, event: 'The Floor', sport_id: sport2.id)

    get '/api/v1/events'

    expect(response).to be_successful

    events = JSON.parse(response.body)

    expect(events.count).to eq(2)

    expect(events[0]['sport']).to eq('Diving')
    expect(events[0]['events']).to eq(['The Big Dive', 'The Small Dive'])
    expect(events[1]['sport']).to eq('Wrestling')
    expect(events[1]['events']).to eq(['The Floor'])
  end
end
