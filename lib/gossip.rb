class Gossip

	attr_reader :author, :content

	def initialize (author, content)
		@content = content
		@author= author
	end

	def save_gossip
		File.write("db/gossip.csv", ("#{@author},  #{@content}\n"), mode: "a")
	end

end