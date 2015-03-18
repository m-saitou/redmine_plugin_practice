class Event < ActiveRecord::Base
  unloadable
  
  has_one :subevent, :autosave => true, :dependent => :destroy
  has_many :event_values, :dependent => :destroy
  
  accepts_nested_attributes_for :event_values
end
