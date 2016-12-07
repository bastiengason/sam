class Task < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :notifications

  def score
    notifications.where(status: "done").size * 3
  end

  def score_color
    if score < 30
      "#50E3C2"
    elsif score > 30 && score < 70
      "#F5A623"
    else
      "#50E3C2"
    end

  end
end
