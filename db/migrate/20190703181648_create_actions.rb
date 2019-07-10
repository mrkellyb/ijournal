class CreateActions < ActiveRecord::Migration[5.2]
  def change
    create_table :actions do |t|
      t.integer :session_id
      t.string :name
      t.string :resource
      t.string :resource_url
      t.integer :start_tempo
      t.integer :stop_tempo
      t.string :keys
      t.string :time_spent
      t.text :notes

      t.timestamps
    end
  end
end
