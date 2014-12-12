require 'docking_station'

describe DockingStation do

  let(:the_bike) {Bike.new}
  let(:station) {DockingStation.new(:capacity => 20)}

  def fill_station(station)
    20.times { station.dock(Bike.new)}
  end
  
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

  it "should know when full" do
    expect(station).not_to be_full
    20.times { station.dock(Bike.new)}
    expect(station).to be_full
  end

  it "should not accept a bike if the station is full" do
    fill_station station
    expect(lambda {station.dock(the_bike)}).to raise_error(RuntimeError, 'Station is full')
  end

  it 'should provde the list of available bikes' do
    working_bike, broken_bike = Bike.new, Bike.new
    broken_bike.break!
    station.dock(working_bike)
    station.dock(broken_bike)
    expect(station.available_bikes).to eq([working_bike])
  end

end