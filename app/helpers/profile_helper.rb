module ProfileHelper

  def greet
    now = Time.now
    today = Date.today.to_time

    morning = today.beginning_of_day
    noon = today.noon
    evening = today.change( hour: 19 )
    night = today.change( hour: 22 )
    tomorrow = today.tomorrow

    if (morning..noon).cover? now
      'Good Morning'
    elsif (noon..evening).cover? now
      'Good Afternoon'
    elsif (evening..night).cover? now
      'Good Evening'
    elsif (night..tomorrow).cover? now
      'Good Night'
    end
  end

  def goodbye
    now = Time.now
    today = Date.today.to_time

    morning = today.beginning_of_day
    noon = today.noon
    evening = today.change( hour: 19 )
    night = today.change( hour: 22 )
    tomorrow = today.tomorrow

    if (morning..noon).cover? now
      'Have a lovely day!'
    elsif (noon..evening).cover? now
      'Have a nice afternoon!'
    elsif (evening..night).cover? now
      'Have a wonderful evening!'
    elsif (night..tomorrow).cover? now
      'Have a restful night!'
    end
  end

end
