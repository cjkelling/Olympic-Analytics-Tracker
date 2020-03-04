require 'rails_helper'

describe 'Medalists for Event Request' do
  it 'sends list of Medalist for an Event' do
    event = create(:event)
    olympian = create(:olympian, name: 'Chan Peng Soon')
    create(:medal, event_id: event.id, olympian_id: olympian.id)
    create(:medal, medal: 'Silver', event_id: event.id)

    get "/api/v1/events/#{event.id}/medalists"

    expect(response).to be_successful

    medalists = JSON.parse(response.body)

    expect(medalists.count).to eq(2)

    expect(medalists['event']).to eq('The Big Dive')
    expect(medalists['medalist'][0]['name']).to eq('Chan Peng Soon').or eq('Maha Abdalsalam')
    expect(medalists['medalist'][0]['team']).to eq('Egypt')
    expect(medalists['medalist'][0]['age']).to eq(18)
    expect(medalists['medalist'][0]['medal']).to eq('Gold').or eq('Silver')
    expect(medalists['medalist'][1]['name']).to eq('Maha Abdalsalam').or eq('Chan Peng Soon')
    expect(medalists['medalist'][1]['team']).to eq('Egypt')
    expect(medalists['medalist'][1]['age']).to eq(18)
    expect(medalists['medalist'][1]['medal']).to eq('Silver').or eq('Gold')
  end

  it 'sends error message if ID cannot be found' do
    get '/api/v1/events/99/medalists'

    expect(response.body).to eq('Error. Could not find event with the ID.')
  end
end
