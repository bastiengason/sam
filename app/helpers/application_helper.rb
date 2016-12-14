module ApplicationHelper
  def evolution(score)
    if score < 20
      "plant-growing-1.png"
    elsif score >= 20 && score < 40
      "plant-growing-2.png"
    elsif score >= 40 && score < 60
      "plant-growing-3.png"
    elsif score >= 60 && score < 80
      "plant-growing-4.png"
    else
      "plant-growing-5.png"
    end
  end
end
