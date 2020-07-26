class View

	def create_gossip
		puts "Hey man."
		puts "What's ya name bra??"
		user = gets.chomp
		puts "Coll stuff bro."
		puts "What ya doin bra??"
		input = gets.chomp
		puts "This one is so much cool bra, thank you thos!!"
		return params = { author: user, content: input}
	end

	def index_gossip(gossip)
		gossip.length.times { |i| puts "#{gossip[i].author} said #{gossip[i].content}." }
		puts "Gossip list display was a success!"
	end

	def kill_gossip(gossip)
		puts "Choose the n° of the uncool story ya wanna kill yo."
		sleep(1)
		gossip.length.times { |i| puts "Cool stroy bro n°#{i + 1} - #{gossip[i].author} said #{gossip[i].content}." }
		puts "Which cool story bro ya wanna kill bra?"
		while true
			print "I wanna kill the story n°"
			input = gets.chomp.to_i - 1
			if input < gossip.length && input > 0
				return input
			else
				puts "What ya sayn???"
			end
		end
		puts "Killin thingy success!"
	end

end