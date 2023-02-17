Grammar Method Design Recipe

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
grammar_checker(# {{Grammar checker}} Method Design Recipe

## 1. Describe the Problem

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

## 2. Design the Method Signature

 outcome = grammar_checker(text)
_Include the name of the method, its parameters, return value, and side effects._


```ruby
* outcome is a string telling the result 
* text is a string
* side effects : "Almost there, you have a capital, missing punctuation" 
                "Almost there, you have puctuation but missing capital"
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby'
#1 DONE
grammar_checker("") => "this is an empty string!"

#2 DONE
grammar_checker("a new string") => "This has no capital, and no punctuation."

#3 DONE
grammar_checker("Capital string") => "Almost there, you have a capital but are missing punctuation."

#4 DONE
grammar_checker("this is a question?") => "Almost there, you have suitable punctuation, but no capital."

#5 DONE
grammar_checker(123) => raise_error "invalid input"

#6 DONE
grammar_checker("This is a success!") => "Very good! You are the best at grammar!"

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._)
# =>  raise 'Invalid string'


4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.