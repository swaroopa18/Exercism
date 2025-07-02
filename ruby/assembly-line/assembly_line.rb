class AssemblyLine
  MAX_CARS_PER_HOUR = 221
  MIN_PER_HOUR = 60
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    success_rate = 
    if (@speed <= 4)
      1
    elsif(@speed >= 5 and @speed <= 8)
      0.9
    elsif(@speed == 9)
      0.8
    else
      0.77
    end
    @speed * success_rate * MAX_CARS_PER_HOUR
  end

  def working_items_per_minute
    (production_rate_per_hour / MIN_PER_HOUR).floor
  end
end
