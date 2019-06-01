POINT_CHEKER = {

  1 => ["A", "E", "I", "O", "U","L", "N", "R", "S", "T"],
  2 => ["D", "G"],
  3 => ["B", "C", "M", "P"],
  4 => ["F", "H", "V", "W", "Y"],
  5 => ["k"],
  8 => ["J", "X"],
  10 => ["Q", "Z"]

}

class Scrabble
  def initialize(word, grader = POINT_CHEKER )
    @word = word
    @grader = grader
  end

  def scores
    score_list = Array.new
    if convert_to_upper == 0
      score_list.push(0)
    else    
      convert_to_upper.split('').each do |x|
        @grader.each do |key, value|
          if value.include?(x)
            score_list.push(key)
          end  
        end
      end
    end 
    score_list.sum
  end

  def score
    scores
  end

  def convert_to_upper
    if !is_valid?
      convert = Proc.new { |x| x.upcase }
      convert.call(@word)
    else   
      return 0
    end
  end

  private
  def is_valid?
    return @word == nil || @word == ''
  end
end

