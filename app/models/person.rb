class Person < ActiveRecord::Base

  has_many :quotes

  validates_presence_of :name, :slug
  validates_uniqueness_of :name

  extend FriendlyId
  friendly_id :name, :use => [ :slugged, :i18n ]

  def title_value
    self.name
  end
end
