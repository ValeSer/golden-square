require 'todo'
require 'todo_list'

describe 'integration Todo' do
  it 'adds a todo' do
    todo = Todo.new('wash the car')
    todo_list = TodoList.new
    todo_list.add(todo)
    expect(todo_list.incomplete.first.task).to eq 'wash the car'
    #expect(todo_list.incomplete.length).to eq 1
    #expect(todo_list.complete.length).to eq 0
  end
  it 'completes a todo' do
    todo = Todo.new('wash the car')
    todo_list = TodoList.new
    todo_list.add(todo)
    todo.mark_done!
    expect(todo_list.complete.task).to eq 'wash the car'
    #expect(todo_list.incomplete.length).to eq 0
    #expect(todo_list.complete.length).to eq 1
  end

  it 'marks all done if give_up' do
    todo_list = TodoList.new
    todo1 = Todo.new('wash the car')
    todo2 = Todo.new('wash the dog')
    todo3 = Todo.new('tidy up')
    todo_list.add(todo1)
    todo_list.add(todo2)
    todo_list.add(todo3)
    expect(todo_list.give_up!).to eq [todo1, todo2, todo3]
  end


end