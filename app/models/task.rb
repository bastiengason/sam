class Task < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :notifications
  validates :name, presence: { :message => "You need to enter a task! " }
  validates :beacon, presence: { :message => "You need to choose a beacon! " }
  validates :frequency, presence: { :message => "I need a day of the week !" }
  validates :distance, presence: { :message => "Choose a distance for your beacon" }
  validates :name, presence: { :message => "You need to enter a task! " }


  DISTANCE_OPTIONS = ["Less than 1 meter", "1 to 3 meters", "3 to 5 meters", "more than 5 meter"]
  FREQUENCY_OPTIONS = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
  TIME_SLOT_OPTIONS = ["Morning", "Afternoon", "Evening"]



  def score
    current_score = notifications.where(status: "done").size
    if current_score >= 100
      100
    else
      current_score
    end
  end

  def score_color
    if score < 30
      "danger"
    elsif score >= 30 && score < 70
      "warning"
    else
      "success"
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
