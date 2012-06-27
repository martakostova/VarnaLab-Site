class Widget < ActiveRecord::Base

  attr_accessible :name, :title

  validates_uniqueness_of :name

  belongs_to :page #one page can have many widgets
end
