class BrewTask < CompositeTask
  def initialize
    super('Brew your beer!')
	self << HeatWaterTask.new
	self << AddMaltTask.new
	self << AddHopsTask.new
	self << BoilWortTask.new
	self << ChillWortTask.new
	self << TransferWortTask.new
  end
end
