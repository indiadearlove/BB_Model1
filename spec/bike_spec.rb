require 'bike'

describe Bike do 
  
  let(:the_bike) { Bike.new }

  it 'should not be broken after we create it' do
    expect(the_bike.broken?).to eq false
  end

  it 'should be able to break' do
    the_bike.break!
    expect(the_bike.broken?).to eq true
  end

  it "should be able to be fixed" do
    the_bike.break!
    expect(the_bike.broken?).to eq true
    the_bike.fix!
    expect(the_bike.broken?).to eq false
  end

end