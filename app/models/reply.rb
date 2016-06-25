class Reply < ApplicationRecord
  belongs_to :post
  belongs_to :user
  include TimeReadable
  # message :string

end
