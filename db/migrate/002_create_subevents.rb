class CreateSubevents < ActiveRecord::Migration
  def change
    create_table :subevents do |t|
      t.string :name
      t.integer :event_id,    :null => false
      t.integer :is_enabled,  :limit => 1
      t.integer :project_id,  :null => false
    end
  end
end
