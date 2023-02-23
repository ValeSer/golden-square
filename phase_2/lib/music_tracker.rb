class MusicTracker
  def initialize
    @tracks = []
  end

  def add(track)
    fail 'Invalid string' unless track.is_a?(String)
    fail 'Already there!' if @tracks.include?(track)
    if track != '' then @tracks << track end
  end

  def list
     @tracks
  end


end