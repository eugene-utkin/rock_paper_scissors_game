# encoding: cp1251

if (Gem.win_platform?)
        Encoding.default_external = Encoding.find(Encoding.locale_charmap)
        Encoding.default_internal = __ENCODING__

        [STDIN, STDOUT].each do |io|
                io.set_encoding(Encoding.default_external, Encoding.default_internal)
        end
end

arr = [:rock, :paper, :scissors]

loop do
	player = "start"
	puts "Choose your destiny:"
	puts "1 - Rock."
	puts "2 - Paper."
	puts "3 - Scissors."

	x = gets.to_i

	pc = arr[rand(0..2)] 

	if x == 1
		player = :rock
	elsif x == 2
		player = :paper
	elsif x == 3
		player = :scissors
	else
		puts "What? Choose again!"
		player = "fail"
	end

matrix = [[:rock, :paper, :second_win], [:rock, :scissors, :first_win], [:rock, :rock, :draw], [:paper, :rock, :first_win], [:paper, :scissors, :second_win], [:paper, :paper, :draw], [:scissors, :rock, :second_win], [:scissors, :paper, :first_win], [:scissors, :scissors, :draw]]


matrix.each do |item|
		if item[0] == player && item[1] == pc
			if item[2] == :first_win
				puts "User wins!"
			elsif item[2] == :second_win
				puts "Computer wins!"
			elsif item[2] == :draw
				puts "Draw!"
			else
				puts "Fuck you!"
			end
		end
	end	 

end