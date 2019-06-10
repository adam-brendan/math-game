def question_generator(player)
    num1 = rand(1..20)
    num2 = rand(1..20)
    answer = num1 + num2
    puts "#{player.name}, what's #{num1} + #{num2}?"
    print "> "
    response = gets.chomp.to_i
   if (response == answer)
    puts "Correct!"
   else
    player.lives -= 1
    puts "Wrong answer. #{player.lives}/3 lives left."
   end
end