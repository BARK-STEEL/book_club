class FermentTask < CompositeTask
  def initialize
    super('Ferment the beer!')
    self << PitchYeastTask.new
    self << AerateWortTask.new
    self << LetBeerSitTask.new
  end
end
