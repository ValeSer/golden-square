require 'present'

RSpec.describe Present do
  it 'wraps and unwraps a value' do
    present = Present.new
    present.wrap(10)
    expect(present.unwrap).to eq 10
  end
  it 'raises error when wrap twice a value' do
    present = Present.new
    present.wrap('hello')
    expect { present.wrap('vale') }.to raise_error "A contents has already been wrapped."
  end
  
  it 'raises error if only try to unwrap' do
    present = Present.new
    expect { present.unwrap }.to raise_error "No contents have been wrapped."
  end
end