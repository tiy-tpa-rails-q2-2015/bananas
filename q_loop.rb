begin
  valid_answer = false

  print "What say you? y/n: "
  answer = gets.chomp

  if answer == "y"
    puts "Aye!"
    valid_answer = true
  elsif answer == "n"
    puts "Nay!"
    valid_answer = true
  else
    puts "That was neither y or n..."
  end

end unless valid_answer
