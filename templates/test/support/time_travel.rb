module TimeTravel
  def before_setup
    super
    travel_to Time.new(1970, 1, 1, 0, 0, 0, "+00:00")
  end

  def afrer_teardown
    travel_back
    super
  end
end
