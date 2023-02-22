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


end
