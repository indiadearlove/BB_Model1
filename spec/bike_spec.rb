require 'bike'

describe Bike do 
  
  it 'should not be broken after we create it' do 
    the_bike = Bike.new
    expect(the_bike.broken?).to eq nil
  end

end