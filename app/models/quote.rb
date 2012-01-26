class Quote < ActiveRecord::Base

  belongs_to :person

  validates_presence_of :body, :person
end
