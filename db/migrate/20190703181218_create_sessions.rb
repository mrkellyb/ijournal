class CreateSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
      t.integer :user_id
      t.date :date
      t.text :start_notes
      t.datetime :start_time
      t.datetime :stop_time
      t.text :stop_notes

      t.timestamps
    end
  end
end
