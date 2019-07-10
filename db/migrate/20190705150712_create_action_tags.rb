class CreateActionTags < ActiveRecord::Migration[5.2]
  def change
    create_table :action_tags do |t|
      t.integer :action_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
