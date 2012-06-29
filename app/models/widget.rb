class Widget < ActiveRecord::Base

  attr_accessible :name, :title

  validates_uniqueness_of :name

  has_and_belongs_to_many :pages #one page can have many widgets
end
