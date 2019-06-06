class Echo
  def say_something
    puts 'Say something:'
    get_user_input = gets.chomp
    
    puts get_user_input
  end
end