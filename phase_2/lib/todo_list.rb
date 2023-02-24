class TodoList
  def initialize
    @todos = []
  end

  def add(todo) 
    @todos << todo
  end

  def incomplete
    @todos.filter do |todo|
      !todo.done?
    end
  end

  def complete
    @todos.filter do |todo|
      todo.done?
    end
  end

  def give_up!
    @todos.each do |todo|
      todo.mark_done!
    end
  end
end