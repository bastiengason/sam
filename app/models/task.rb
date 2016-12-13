class Task < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :notifications


  DISTANCE_OPTIONS = ["Less than 1 meter", "1 to 3 meters", "3 to 5 meters", "more than 5 meter"]
  FREQUENCY_OPTIONS = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
  TIME_SLOT_OPTIONS = ["Morning", "Afternoon", "Evening"]



  def score
    current_score = notifications.where(status: "done").size * 3
    if current_score >= 100
      100
    else
      current_score
    end
  end

  def score_color
    if score < 30
      "#AAAAAA"
    elsif score >= 30 && score < 70
      "#F5A623"
    else
      "#50E3C2"
    end
  end

  def evolution
    if score < 20
      "plant-growing-1.png"
    elsif score < 40
      "plant-growing-2.png"
    elsif score < 60
      "plant-growing-3.png"
    elsif score < 80
      "plant-growing-4.png"
    else
      "plant-growing-5.png"
    end
  end

  def motivation_sentence
    if score < 30
      "That's a good start!"
    elsif score >= 30 && score < 70
      "You're getting closer to make " + name.downcase + " an habit. Keep going! "
    elsif score >= 70 && score < 100
      "You're close to make " + name.downcase + " an habit, good job!"
    else
      "Yay, you made " + name.downcase + " an habit. Well done!"
    end
  end

end
