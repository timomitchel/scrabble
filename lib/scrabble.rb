class Scrabble

  def initialize
    @array_of_word = []
    @count = 0
  end

  def score(word)
    if word.length > 6
      @count += 10
    end
    @array_of_word =[]
    word.split('').each do |letter|
      @array_of_word << letter.upcase
    end
      point_counter(@array_of_word)

  end

  def point_counter(array)
    points =  array
    points.map {|letters| SCRABBLE_POINTS.values_at(letters)}

    summed_array = points.inject(0){|sum,x| sum + x }
    require 'pry'; binding.pry
    @count += summed_array

  end




SCRABBLE_POINTS =     {
      "A"=>1, "B"=>3, "C"=>3, "D"=>2,
      "E"=>1, "F"=>4, "G"=>2, "H"=>4,
      "I"=>1, "J"=>8, "K"=>5, "L"=>1,
      "M"=>3, "N"=>1, "O"=>1, "P"=>3,
      "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
      "U"=>1, "V"=>4, "W"=>4, "X"=>8,
      "Y"=>4, "Z"=>10, "" => 0, nil => 0
    }




end

x = Scrabble.new
points = x.score("APPLE")
points
puts @count
