class Controller

	def initialize
		@view = View.new
	end

	def create_gossip
		params = @view.create_gossip
		gossip = Gossip.new(params[:author], params[:content])
		gossip.save_gossip
	end

	def all
	  	all_gossip = []
	  	CSV.parse(File.open("db/gossip.csv", "r+").read).each do |ligne|
	  		one_gossip = Gossip.new(ligne[0], ligne[1])
	  		all_gossip << one_gossip 
	    end
	    return all_gossip
	end


	def index_gossip
		@view.index_gossip(self.all)
	end

	def kill_gossip
		gossip_array = self.all
		target_index = @view.kill_gossip(gossip_array)
		gossip_array.delete_at(target_index)
		File.write("db/gossip.csv", (""), mode: "w")
		gossip_array.each { |gossip| gossip.save_gossip }
	end



end