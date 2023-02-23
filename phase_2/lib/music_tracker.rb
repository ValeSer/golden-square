class MusicTracker
  def initialize
    @tracks = []
  end

  def add(track)
    fail 'Invalid string' unless track.is_a?(String)
    if track != '' then @tracks << track end
  end

  def list
     @tracks
  end


end