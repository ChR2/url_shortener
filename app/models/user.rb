class User < ActiveRecord::Base
  has_many :urls
  validates :email, uniqueness: true
  validates_presence_of :name

end
