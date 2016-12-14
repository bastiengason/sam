class Category < ApplicationRecord
  has_many :task


  def icon_self

   return "fa fa-home" if self.name == "Home"
   return "fa-medkit" if self.name == "Health"
   return "fa-star" if self.name == "Self-improvement"
   return "fa-hourglass-start" if self.name == "Productivity"
   return "fa-plus" if self.name == "Other"

  end
end
