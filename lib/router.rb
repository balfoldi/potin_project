class Router

	def initialize

		@Controller = Controller.new

	end

	def perfrom

		while true
			puts "1- creat gossip"
			puts "2- qui application"
			case input = gets.chomp
			when "1"
				@controller.create_gossip
			when "4"
				puts"Application shut down."
				break
			else
				puts "wrong input"
			end

		end
	end
end#