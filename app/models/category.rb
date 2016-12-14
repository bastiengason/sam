class Category < ApplicationRecord
  has_many :task


  def icon_self

   return "fa fa-home" if self.name == "home"
   return "fa-medkit" if self.name == "health"
   return "fa-star" if self.name == "self-improvement"
   return "fa-hourglass-start" if self.name == "productivity"
   return "fa-plus" if self.name == "other"

  end
end
