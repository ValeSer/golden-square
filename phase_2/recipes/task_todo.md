{{check text for #TODO}} Method Design Recipe
1. Describe the Problem
As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.

2. Design the Method Signature
output = task_todo(text)


```ruby
* text is a string
* output is a boolean

```

3. Create Examples as Tests

```ruby
#1 
task_todo('') => false

#2
task_todo('#todo') => false

#3
task_todo('#TODO') => true

#4
task_todo('#ToDo') => false

#5
task_todo('THIS#TODO') => true

#6
task_todo('Lorem#TODOipsum') => true

#7
task_todo('TODO') => false




```