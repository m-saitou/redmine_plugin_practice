class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.integer :project_id
      t.string :subject
      t.string :description
      t.integer :is_enabled,  :limit => 1
      t.integer :project_id,  :null => false
    end
  end
end
