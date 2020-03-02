require 'csv'

task import_csv: :environment do
  CSV.foreach('db/data/olympic_data_2016.csv', headers: true) do |row|
    Olympian.create!(row.to_h)
  end
end
