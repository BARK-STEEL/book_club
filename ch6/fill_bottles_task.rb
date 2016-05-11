class FillBottlesTask < Task
	def initialize
		super('Siphon the beer from the bottling bucket to each bottle!')
	end

	def time_required
		20
	end
end
