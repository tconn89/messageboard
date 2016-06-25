class Post < ApplicationRecord
  belongs_to :user
  has_many :replies
  # title :string
  # message :string
  def readable_time
    time = self.created_at
    diff = Time.now - time
    if (diff < 5.minutes)
      time.to_s(:time)
    else
      time.to_formatted_s(:short)
    end
  end
end
