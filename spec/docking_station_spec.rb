require 'docking_station'

describe DockingStation do

  let(:the_bike) {Bike.new}
  let(:station) {DockingStation.new}
  
  it "let a bike be docked" do
    expect(station.bike_count).to eq(0)
    station.dock(the_bike)
    expect(station.bike_count).to eq(1)
  end

  it "should release a bike" do
    station.dock(the_bike)
    expect(station.bike_count).to eq(1)
    station.release(the_bike)
    expect(station.bike_count).to eq(0)
  end

end