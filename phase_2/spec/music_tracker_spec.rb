require 'music_tracker'

describe MusicTracker do
  context 'is empty' do
      it 'add method not called' do
        music_tracker = MusicTracker.new
        expect(music_tracker.list).to eq []
      end
      it 'empty string passed' do
        music_tracker = MusicTracker.new
        music_tracker.add('')
        expect(music_tracker.list). to eq []
      end
  end

  it 'fails if not a string' do
    music_tracker = MusicTracker.new
    expect { music_tracker.add(9) }.to raise_error 'Invalid string'
  end

  it 'adds 1 record' do
    music_tracker = MusicTracker.new
    music_tracker.add('record1')
    expect(music_tracker.list).to eq ['record1']
  end

end