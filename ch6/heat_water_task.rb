class HeatWaterTask < Task
  def initialize
    super('Bring the water to a boil')
  end

  def time_required
    10
  end
end
