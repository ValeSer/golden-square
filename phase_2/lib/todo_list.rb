class TodoList
  def initialize
    @incomplete_todos = []
    @complete_todos = []
  end

  def add(todo) 
    @incomplete_todos << todo
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