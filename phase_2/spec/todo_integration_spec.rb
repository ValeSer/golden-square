require 'todo'
require 'todo_list'

describe 'integration Todo' do
  it 'adds a todo' do
    todo = Todo.new('wash the car')
    todo_list = TodoList.new
    todo_list.add(todo)
    expect(todo_list.incomplete.first.task).to eq 'wash the car'
  end
  xit 'completes a todo' do
    todo = Todo.new('wash the car')
    todo_list = TodoList.new
    todo_list.add(todo)
    todo.mark_done!
    expect(todo_list.complete).to eq ['wash the car']
  end



end