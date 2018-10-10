require 'journey'

describe Journey do
 let(:station) {double :station, zone: 3}
 let(:journey){Journey.new(entry_station, exit_station)}
 let(:entry_station){"old_street"}
 let(:exit_station){"old_gate"}

 context "given an entry station" do
   subject { described_class.new(entry_station: station)}

   it "stores the entry station" do
     expect(journey.entry_station).to eq entry_station
   end

   it "stores the exit station" do
     expect(journey.exit_station).to eq exit_station
   end

  describe '#show_journeys' do
    it 'should have an empty list of journeys by default' do
      expect(journey.journeys).to eq []
    end

     it 'should store a lists of journeys' do
       journey.enter(entry_station)
       journey.leave(exit_station)
       expect(journey.show_journeys).to eq [{ 'entry station' => entry_station, 'exit station' => exit_station }]
     end
   end
 end

 describe '#in_journey?' do
   it 'should not be in journey if not touched in' do
     expect(journey.in_journey).to eq false
   end

   it 'should tell us we are in a journey if we are' do
     journey.enter(entry_station)
     expect(journey.in_journey).to eq true
   end
 end
end
