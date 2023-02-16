{{Capital letters and sentence ending texts}} Method Design Recipe

1. Describe the Problem
As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

2. Design the Method Signature

```ruby
checked_text = grammar_checker(text)

```

* text is a string 
* checked_text is a string (eg 'We are happy to have you here.')
* raises error if not valid

3. Create Examples as Tests
Make a list of examples of what the method will take and return.

# 1
grammar_checker('')
# =>  ''

# 2
grammar_checker('we')
# =>  'We'

# 3
grammar_checker('we')
# =>  'We.'

# 4
grammar_checker('we are happy to have you here')
# => 'We are happy to have you here.'

# 5
grammar_checker(45959)
# =>  raise 'Invalid string'


4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.