class AddUniqueIndexToTagTask < ActiveRecord::Migration[5.2]
  def change
    add_index :tag_tasks, [:task_id, :tag_id], unique: true
  end
end
