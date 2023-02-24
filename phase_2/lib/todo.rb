class Todo
  def initialize(task) 
    @task = task
  end

  def task
    fail 'Not a string!' if !@task.is_a?(String)
    @task
  end

  def mark_done!
    # Marks the todo as done
    # Returns nothing
  end

  def done?
    # Returns true if the task is done
    # Otherwise, false
  end
end