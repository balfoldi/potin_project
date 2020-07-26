class Router
	attr_accessor :controller

	def initialize
		@controller = Controller.new
	end

	def perform
		while true
			puts "1- Creat a cool story bro"
			puts "2- See all cool stories"
			puts "3- I wanna kick in dat fking uncool story boomer."
			puts "4- Quit application"
			case input = gets.chomp.to_i
			when 1
				@controller.create_gossip
			when 2
				@controller.index_gossip
			when 3
				@controller.kill_gossip
			when 4
				puts"Application shut down."
				break
			else
				puts "wrong input"
			end
		end
	end
end#