class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :event
      t.references :sport, foreign_key: true

      t.timestamps
    end
  end
end
