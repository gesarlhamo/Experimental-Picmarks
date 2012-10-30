class Picture < ActiveRecord::Base
  attr_accessible :title, :url, :note
  
  validates :url, :presence => true
  validates :title, :presence => true
  # validates :status, :presence => note
  
  
end
