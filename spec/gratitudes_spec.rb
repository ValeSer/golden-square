require 'gratitudes'

RSpec.describe Gratitudes do
  it 'returnes "Be grateful for: " initially' do
    gratitude = Gratitudes.new
    expect(gratitude.format).to eq "Be grateful for: "
  end

  it 'returnes "Be grateful for: life"' do
    gratitude = Gratitudes.new
    gratitude.add('life')
    expect(gratitude.format).to eq "Be grateful for: life"
  end

  it 'returnes "Be grateful for: life, health"' do
    gratitude = Gratitudes.new
    gratitude.add('life')
    gratitude.add('health')
    expect(gratitude.format).to eq "Be grateful for: life, health"
  end
end