# encoding: cp1251

if (Gem.win_platform?)
        Encoding.default_external = Encoding.find(Encoding.locale_charmap)
        Encoding.default_internal = __ENCODING__

        [STDIN, STDOUT].each do |io|
                io.set_encoding(Encoding.default_external, Encoding.default_internal)
        end
end

arr = %w[:rock :paper :scissors]

loop do
	player = "start"
	puts "Choose your destiny:"
	puts "1 - Rock."
	puts "2 - Paper."
	puts "3 - Scissors."

	x = gets.to_i

	pc = arr[rand(0..2)] 

	if x == 1
		player = "rock"
	elsif x == 2
		player = "paper"
	elsif x == 3
		player = "scissors"
	else
		puts "What? Choose again!"
		player = "fail"
	end

	puts "Your choice: #{player}. PC's choice: #{pc}." 

	if player == "rock" && pc == ":rock"
		puts "It's a draw. Choose again!"
	elsif player == "paper" && pc == ":paper"
        	puts "It's a draw. Choose again!"
	elsif player == "scissors" && pc == ":scissors"
        	puts "It's a draw. Choose again!"
	elsif player == "rock" && pc == ":scissors"
		puts "You won! Congratulations!"
	elsif player == "rock" && pc == ":paper"
		puts "Bad luck. Try again."
	elsif player == "paper" && pc == ":rock"
		puts "You won! Congratulations!"
	elsif player == "paper" && pc == ":scissors"
		puts "Bad luck. Try again."
	elsif player == "scissors" && pc == ":paper"
		puts "You won! Congratulations!"
	elsif player == "scissors" && pc == ":rock"
		puts "Bad luck. Try again."
	end
end