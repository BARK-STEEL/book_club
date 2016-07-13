class TransferWortTask < Task
	def initialize
		super('Transfer the wort to a fermenting vessel!')
	end

	def time_required
		5
	end
end
