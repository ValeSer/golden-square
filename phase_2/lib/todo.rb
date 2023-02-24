class Todo
  def initialize(task) 
    fail 'Invalid string!' if !task.is_a?(String) || task.empty?
    @task = task
    @status = false
   end

  def task
    @task
  end

  def mark_done!
    @status = true
  end

  def done?
    return @status
  end
end