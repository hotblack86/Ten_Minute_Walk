require 'walk.rb'

RSpec.describe Walk do

  it "checks the length of array passed in" do
    walk = Walk.new(['w', 's', 'e', 'n', 'n', 'e', 's', 'w', 'w', 'w'])
    expect(walk.input.length).to eq(10) 
  end

  it "returns false if the array length doesn't equal 10" do
    walk = Walk.new(['w', 's', 'e', 'n', 'n', 'e', 's', 'w'])
    expect(walk.is_ten?).to eq(false) 
  end

  it "checks that west and east are equal" do
    walk = Walk.new(['w', 's', 'e', 'e', 'n', 'n', 'e', 's', 'w', 'w'])
    walk.direction_even
    expect(walk.west).to eq(3)
    expect(walk.east).to eq(3)
  end

  it "checks that north and south are equal" do
    walk = Walk.new(['w', 's', 'e', 'e', 'n', 'n', 'e', 's', 'w', 'w'])
    walk.direction_even
    expect(walk.north).to eq(2)
    expect(walk.south).to eq(2)
  end

  it "returns true for a succesful walk" do
    walk = Walk.new(['w', 's', 'e', 'e', 'n', 'n', 'e', 's', 'w', 'w'])
    expect(walk.run).to eq(true)
  end

  it "returns false for an unsuccesful walk" do
    walk = Walk.new(['w', 's', 'e', 'n', 'n', 'e', 's', 'w', 'w', 'w'])
    expect(walk.run).to eq(false)
  end
end
