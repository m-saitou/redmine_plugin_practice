class CreateEventValues < ActiveRecord::Migration
  def change
    create_table :event_values do |t|
      t.integer :event_id,    :null => false
      t.integer :field_id,    :null => false
      t.string :value
    end
  end
end
