class MiddleString
  def get_middle(user_input)
    middle = user_input.length/2
    middle_string = user_input[middle]
    other_middle = user_input[middle - 1]

    user_input.length.odd? ? middle_string : [middle_string,other_middle].join()
  end
end
