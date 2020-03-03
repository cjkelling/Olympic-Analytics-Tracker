require 'csv'

task import_csv: :environment do
  CSV.foreach('db/data/olympic_data_2016.csv', headers: true) do |row|
    row = (row.to_hash)

    team = Team.find_or_create_by(
      team: row['Team']
    )

    sport = Sport.find_or_create_by(
      sport: row['Sport']
    )

    event = Event.find_or_create_by(
      event: row['Event'],
      sport_id: sport.id
    )

    olympian = Olympian.find_or_create_by(
      name: row['Name'],
      sex: row['Sex'],
      age: row['Age'],
      height: row['Height'],
      weight: row['Weight'],
      team_id: team.id,
      games: row['Games'],
      sport_id: sport.id,
    )

    Medal.find_or_create_by(
      medal: row['Medal'],
      olympian_id: olympian.id,
      event_id: event.id
    )
  end
end
