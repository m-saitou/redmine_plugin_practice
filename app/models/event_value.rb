class EventValue < ActiveRecord::Base
  unloadable
  
  belongs_to :event
end
