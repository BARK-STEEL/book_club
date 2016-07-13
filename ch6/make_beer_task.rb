class MakeBeerTask < CompositeTask
  def initialize
    super('Make beer')
    self << SanitizeEquipmentTask.new
    self << BrewTask.new
    self << FermentTask.new
    self << BottleTask.new
  end
end
