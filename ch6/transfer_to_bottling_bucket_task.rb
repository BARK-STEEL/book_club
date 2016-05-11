class TransferToBottlingBucketTask < Task
	def initialize
		super('Transfer the beer to the bottling bucket!')
	end

	def time_required
		3
	end
end
