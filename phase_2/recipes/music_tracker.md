Single-Class Programs Design Recipe
1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

2. Design the Class Interface

```ruby
  class MusicTracker
    def initialize
    end

    def add(track)
      * track is a string
      * not returning anything
    end

    def list
      * it returns a list of tracks as a string 
    end
  end

```

3. Create Examples as Tests

```ruby
#1
music_tracker = MusicTracker.new
music_tracker.list #=> []

#2
music_tracker = MusicTracker.new
music_tracker.add('')
music_tracker.list #=> []

#3
music_tracker = MusicTracker.new
music_tracker.add(9) #=> fails 'Invalid string'

#4
music_tracker = MusicTracker.new
music_tracker.add('record1')
music_tracker.list #=> ['record1']

#5
music_tracker = MusicTracker.new
music_tracker.add('record1')
music_tracker.add('record1') #=> fails 'Already there!'

#6
music_tracker = MusicTracker.new
music_tracker.add('record1')
music_tracker.add('record2')
music_tracker.list #=> ['record1, record2']


```

4. Implement the Behaviour
For each example you create as a test, implement the behaviour that allows the class to behave according to your example.

At this point you may wish to apply small-step test-driving to manage the complexity. This means you only write the minimum lines of the example to get the test to fail (red), then make it pass (green) and refactor, before adding another line to the test until it fails, then continue.

Then return to step 3 until you have addressed the problem you were given. You may also need to revise your design, for example if you realise you made a mistake earlier.





