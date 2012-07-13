class Event < ActiveRecord::Base
  belongs_to :author
  attr_accessible :body, :date, :place, :title
  validates_presence_of :body,:date, :place, :title
end
