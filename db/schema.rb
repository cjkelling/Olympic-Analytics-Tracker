# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_200_303_164_546) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'events', force: :cascade do |t|
    t.string 'event'
    t.bigint 'sport_id'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['sport_id'], name: 'index_events_on_sport_id'
  end

  create_table 'medals', force: :cascade do |t|
    t.string 'medal'
    t.bigint 'olympian_id'
    t.bigint 'event_id'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['event_id'], name: 'index_medals_on_event_id'
    t.index ['olympian_id'], name: 'index_medals_on_olympian_id'
  end

  create_table 'olympians', force: :cascade do |t|
    t.string 'name'
    t.string 'sex'
    t.integer 'age'
    t.integer 'height'
    t.integer 'weight'
    t.string 'games'
    t.bigint 'team_id'
    t.bigint 'sport_id'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['sport_id'], name: 'index_olympians_on_sport_id'
    t.index ['team_id'], name: 'index_olympians_on_team_id'
  end

  create_table 'sports', force: :cascade do |t|
    t.string 'sport'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'teams', force: :cascade do |t|
    t.string 'team'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  add_foreign_key 'events', 'sports'
  add_foreign_key 'medals', 'events'
  add_foreign_key 'medals', 'olympians'
  add_foreign_key 'olympians', 'sports'
  add_foreign_key 'olympians', 'teams'
end
