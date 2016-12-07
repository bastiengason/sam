class Task < ApplicationRecord
  belongs_to :user
  belongs_to :category

  DISTANCE_OPTIONS = ["Less than 1 meter", "1 to 3 meters", "3 to 5 meters", "more than 5 meter"]
  FREQUENCY_OPTIONS = ["Everyday", "Every two days", "Three times a week", "Two times a week"]
  TIME_SLOT_OPTIONS = ["Morning", "Afternoon", "Evening"]
end
