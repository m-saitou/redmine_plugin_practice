class Subevent < ActiveRecord::Base
  unloadable
  
  belongs_to :event
end
