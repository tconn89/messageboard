require 'timereadable'
class Post < ApplicationRecord
  belongs_to :user
  has_many :replies
  include TimeReadable
  # title :string
  # message :string
end
