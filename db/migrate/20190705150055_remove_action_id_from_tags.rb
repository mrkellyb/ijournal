class RemoveActionIdFromTags < ActiveRecord::Migration[5.2]
  def change
    remove_column :tags, :action_id, :integer
  end
end
