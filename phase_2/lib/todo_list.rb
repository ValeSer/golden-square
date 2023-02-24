class TodoList
  def initialize
    @incomplete_todos = []
    @complete_todos = []
  end

  def add(todo) # todo is an instance of Todo
    # Returns nothing
  end

  def incomplete
    @incomplete_todos
  end

  def complete
    @complete_todos
  end

  def give_up!
    # Marks all todos as complete
  end
end