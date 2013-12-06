class NurseryRhyme

  def recite
    1.upto(12).map {|i| line(i)}.join "\n"
  end

  def line number
    "This is the #{sections_for_line number}\n"
  end

  private

  def sections_for_line number
    sections.take(number).reverse.join ' '
  end

  def sections
    [
      "house that Jack built.",
      "malt that lay in the",
      "rat that ate the",
      "cat that killed the",
      "dog that worried the",
      "cow with the crumpled horn that tossed the",
      "maiden all forlorn that milked the",
      "man all tattered and torn that kissed the",
      "priest all shaven and shorn that married the",
      "cock that crowed in the morn that woke the",
      "farmer sowing his corn that kept the",
      "horse and the hound and the horn that belonged to the"
    ]
  end
end


