class Person < ActiveRecord::Base

  has_many :quotes

  validates_presence_of :name
end
