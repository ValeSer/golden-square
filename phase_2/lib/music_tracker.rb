class MusicTracker
  def initialize
  end

  def add(track)
    fail 'Invalid string' unless track.is_a?(String)
  end

  def list
    []
  end


end