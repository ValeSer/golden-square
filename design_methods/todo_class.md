Single-Class Programs Design Recipe
1. Describe the Problem

> As a user
> So that I can keep track of my tasks
> I want a program that I can add todo tasks to and see a list of them.

> As a user
> So that I can focus on tasks to complete
> I want to mark tasks as complete and have them disappear from the list.


2. Design the Class Interface

```ruby
class TodoList
  def initializer
  end

  def add(task) 
    * task is a string representing an instruction
    * returns nothing
  end

  def list
    * returns a list of the tasks added as strings
  end

  def complete(task)
    * task is a string representing a task to mark complete
    * returns nothing
    * fails if the example doesn't exist
  end
```


3. Create Examples as Tests

```ruby
#1
todo_list = TodoList.new
todo_list.list  # => []

#2
todo_list = TodoList.new
todo_list.add('Wash the car')
todo_list.list  # => ['Wash the car']

#3
todo_list = TodoList.new
todo_list.add('Wash the car')
todo_list.add('Wash the dog')
todo_list.list  # => ['Wash the car', 'Wash the dog']

#4
todo_list = TodoList.new
todo_list.add('Wash the car')
todo_list.add('Wash the car') # => fails 'Task already there'
 

#5
todo_list = TodoList.new
todo_list.add('Wash the car')
todo_list.add('Wash the dog')
todo_list.complete('Wash the car')
todo_list.list  # => ['Wash the dog']

#6
todo_list = TodoList.new
todo_list.add('Wash the car')
todo_list.complete('Wash the cat')
todo_list.list  # => fails 'no such task'
```
4. Implement the Behaviour
For each example you create as a test, implement the behaviour that allows the class to behave according to your example.

At this point you may wish to apply small-step test-driving to manage the complexity. This means you only write the minimum lines of the example to get the test to fail (red), then make it pass (green) and refactor, before adding another line to the test until it fails, then continue.

Then return to step 3 until you have addressed the problem you were given. You may also need to revise your design, for example if you realise you made a mistake earlier.





