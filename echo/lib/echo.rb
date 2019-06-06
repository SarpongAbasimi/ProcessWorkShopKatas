class Echo
  def say_something
    puts 'Say something:'
    user_input
  end

  def user_input
    gets.chomp
  end
end