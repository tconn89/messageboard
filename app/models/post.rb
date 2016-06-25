class Post < ApplicationRecord
  belongs_to :user
  has_many :replies
  # title :string
  # message :string
  def readable_time
    time = self.created_at
    #diff = Time.now - time
    #if (diff < 5.minutes)
    month = time.strftime("%B")
    day = time.strftime("%d")
    am_pm = time.strftime("%p")
    year = time.strftime("%Y")
    hour = time.strftime("%I")
    min = time.strftime("%M")
    "#{month} #{day}, #{year} #{hour}:#{min}#{am_pm}"
  end
end
