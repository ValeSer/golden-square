class TodoList

  def initialize
    @tasks = []
  end

  def list
    return @tasks
  end

  def add(task)
    fail 'Task already there' if @tasks.include?(task)
    @tasks << task 
  end

  def complete(task)
    if @tasks.include?(task) then @tasks.delete(task) end
  end

end
