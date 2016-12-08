class Task < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :notifications

  def score
    notifications.where(status: "done").size * 3
  end

  def score_color
    if score < 30
      "#FC5252"
    elsif score >= 30 && score < 70
      "#F5A623"
    else
      "#50E3C2"
    end
  end

  def motivation_sentence
    if score < 30
      "That's a good start!"
    elsif score >= 30 && score < 70
      "You're getting closer to make " + name.downcase + " an habit. Keep going! "
    elsif score >= 70 && score < 100
      "You're closed to make " + name.downcase + " an habit, good job!"
    else
      "Yay, you made " + name.downcase + " an habit. Well done!"
    end
  end
end
