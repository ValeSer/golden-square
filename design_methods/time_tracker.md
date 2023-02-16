{{Estimating reading time for text}} Method Design Recipe

1. Describe the Problem
As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

2. Design the Method Signature
estimated_time = time_tracker(text)

* text is a string 
* estimated_time is a string (eg '2 minutes and 15 seconds')


3. Create Examples as Tests
Make a list of examples of what the method will take and return.


# 1
time_tracker('')
# =>  '0 minutes and 0 seconds'

# 2
time_tracker('A sentence with five words')
# => '0 minutes and 1 second'

# 3
time_tracker(...string with 1000 words)
# =>  '5 minutes'

# 4
time_tracker(...string with 500 words)
# =>  '2 minutes and 30 seconds'


4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.