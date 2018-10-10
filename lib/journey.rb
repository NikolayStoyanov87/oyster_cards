class Journey
 attr_reader :entry_station, :exit_station, :journeys, :in_journey

 def initialize(entry_station, exit_station)
   @entry_station = entry_station
   @exit_station = exit_station
   @journeys = []
   @in_journey = false
 end

 def enter(entry_station)
   @in_journey = true
 end

 def leave(exit_station)
 end

 def show_journeys
   @journeys << { 'entry station' => @entry_station, 'exit station' => exit_station }
 end

end
