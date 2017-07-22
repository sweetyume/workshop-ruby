class Bottle
  def perform
    lyrics = ""
    bottle_max = 99
    bottle_min = 0

    (bottle_min..bottle_max).to_a.reverse.each do |i|
      if i == 1
        lyrics << "#{i} bottle of beer on the wall, #{i} bottle of beer.\n"
        lyrics << "Take it down and pass it around, no more bottles of beer on the wall.\n\n"
      elsif i == 0
        lyrics << "No more bottles of beer on the wall, no more bottles of beer.\n"
        lyrics << "Go to the store and buy some more, #{bottle_max} bottles of beer on the wall."
      else
        lyrics << "#{i} bottles of beer on the wall, #{i} bottles of beer.\n"
        lyrics << "Take one down and pass it around, #{i-1} #{display_bottles(i-1)} of beer on the wall.\n\n"
      end
    end
    return lyrics
  end

  private
  def display_bottles(number_bottles)
    case number_bottles
    when 0,1
      "bottle"
    else
      "bottles"
    end
  end
end
