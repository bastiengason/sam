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

  def random_quotes
    quotes = [{
        author: "Aniekee Tochukwu Ezekiel",
        content: "Shovel today's challenges for your tomorrow's freedom."
      },
      {
        author: "Aniekee Tochukwu Ezekiel",
        content: "Shovel today's challenges for your tomorrow's freedom."
      },
      {
        author: "Jim Ryun",
        content: "Motivation is what gets you started. Habit is what keeps you going."
      },
      {
        author: "Shannon L. Alder",
        content: "The best kind of happiness is a habit you're passionate about."
      },
      {
        author: "Audrey Moralez",
        content: "A system is only as effective as your level of commitment to it."
      },
      {
        author: "Aniekee Tochukwu Ezekiel",
        content: "Shovel today's challenges for your tomorrow's freedom."
      },
      {
        author: "Aniekee Tochukwu Ezekiel",
        content: "Shovel today's challenges for your tomorrow's freedom."
      },
      {
        author: "Aniekee Tochukwu Ezekiel",
        content: "Shovel today's challenges for your tomorrow's freedom."
      },
      {
        author: "Julien Smith",
        content: "Everything you are used to, once done long enough, starts to seem natural, even though it might not be."
      }]

    quote = quotes.sample
   raw("<div class='inspiration-quote'>#{quote[:content]}</div><i>– #{quote[:author]}</i>")
 end

end
