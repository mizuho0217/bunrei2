class Example < ActiveRecord::Base
  belongs_to :user
  has_many :iines
end
