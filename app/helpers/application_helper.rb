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
        author: "Aporva Kala",
        content: "What are we but the some total of our habits and lifestyle."
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
        author: "Clifford Cohen",
        content: "Chronic problems tend to come from chronic habits."
      },
      {
        author: "Og Mandino",
        content: "Good habits are the key to all success. Bad habits are the unlocked door to failure."
      },
      {
        author: "Chris Matakas",
        content: "Systems and processes will always surpass motivation."
      },
      {
        author: "Julien Smith",
        content: "Everything you are used to, once done long enough, starts to seem natural, even though it might not be."
      },
    {
        author: "Gretchen Rubin",
        content: "I should pursue only those habits that would make me feel freer and stronger."
      },
    {
        author: "Richard J. Foster",
        content: "Spiritual disciplines answer the shallow world."
        },
      ]



    quote = quotes.sample
   raw("<div class='inspiration-quote'>#{quote[:content]}</div><i>– #{quote[:author]}</i>")
 end

end
