class NurseryRhyme
  attr_reader :randomize

  def initialize randomize=false
    @randomize = randomize
  end

  def recite
    if randomize

    else
      1.upto(12).map {|i| line i }.join "\n"
    end
  end

  def line number
    "This is the #{sections_for_line number}\n"
  end

  def sections_for_line number
    sections.take(number).reverse.join ' '
  end

  def sections
    12.times.map do |number|
      "#{subjects[number]} that #{actions[number]}"
    end
  end

  def subjects
    [
      "house",
      "malt",
      "rat",
      "cat",
      "dog",
      "cow with the crumpled horn",
      "maiden all forlorn",
      "man all tattered and torn",
      "priest all shaven and shorn",
      "cock that crowed in the morn",
      "farmer sowing his corn",
      "horse and the hound and the horn"
    ]
  end

  def actions
    [
      "Jack built.",
      "lay in the",
      "ate the",
      "killed the",
      "worried the",
      "tossed the",
      "milked the",
      "kissed the",
      "married the",
      "woke the",
      "kept the",
      "belonged to the"
    ]
  end

end
