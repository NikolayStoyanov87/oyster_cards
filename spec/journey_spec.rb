require “journey”

describe Journey do
 let(:station) {double :station, zone: 3}
 let(:journey){Journey.new(entry_station, exit_station)}
 let(:entry_station){“old_street”}
 let(:exit_station){“old_gate”}
 context ‘given an entry station’ do
   subject { described_class.new(entry_station: station)}

   it “stores the entry station” do
     expect(journey.entry_station).to eq entry_station
   end

   it “stores the exit station” do
     expect(journey.exit_station).to eq exit_station
   end
 end
 end
