class Task < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :notifications


  DISTANCE_OPTIONS = ["Less than 1 meter", "1 to 3 meters", "3 to 5 meters", "more than 5 meter"]
  FREQUENCY_OPTIONS = ["Everyday", "Every two days", "Three times a week", "Two times a week"]
  TIME_SLOT_OPTIONS = ["Morning", "Afternoon", "Evening"]



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
