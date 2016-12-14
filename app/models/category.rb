class Category < ApplicationRecord
  has_many :task



#   def category_icon
#     case self.name

#         when category.name == "home"
#           return "fa fa-home"
#         when category.name == "health"
#           return "fa fa-medkit "
#         when category.name == "self-improvement"
#           return "fa fa-level-up"
#         when category.name == "productivity"
#           return "fa fa-lightbulb-o"
#         when category.name == "other"
#           return "fa fa-times"
#   end
# end

end
