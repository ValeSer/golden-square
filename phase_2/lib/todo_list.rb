class TodoList
  def initialize
    @todos = []
  end

  def add(todo) 
    @todos << todo
  end

  def incomplete
    @todos
  end

  def complete
    @todos.filter do |todo|
      return todo if todo.done?
    end
  end

  def give_up!
    @todos.each do |todo|
      todo.mark_done!
    end
  end
end