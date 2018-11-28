class CreateTagTask < ActiveRecord::Migration[5.2]
  def change
    create_table :tag_tasks do |t|
      t.belongs_to :tag,  index: true, foreign_key: true, null: false
      t.belongs_to :task, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
