class TodoList

  def initialize
    @tasks = []
  end

  def list
    return @tasks
  end

  def add(task)
    @tasks << task
  end


end
