class Product < ActiveRecord::Base
  acts_as_votable
  belongs_to :user
end
