require 'todo'
require 'todo_list'

describe 'integration Todo' do
  context '#incomplete' do
    it 'returns one incomplete todo' do
      todo = Todo.new('wash the car')
      todo_list = TodoList.new
      todo_list.add(todo)
      expect(todo_list.incomplete).to eq [todo]
    end
    it 'returns two incomplete todo' do
      todo1 = Todo.new('wash the car')
      todo2 = Todo.new('wash the dog')
      todo_list = TodoList.new
      todo_list.add(todo1)
      todo_list.add(todo2)
      expect(todo_list.incomplete).to eq [todo1, todo2]
    end
    it 'given 2 todos returns one incomplete' do
      todo1 = Todo.new('wash the car')
      todo2 = Todo.new('wash the dog')
      todo_list = TodoList.new
      todo_list.add(todo1)
      todo_list.add(todo2)
      todo1.mark_done!
      expect(todo_list.incomplete).to eq [todo2]
    end
  end
  context '#complete' do
    it 'returns one complete todo' do
      todo = Todo.new('wash the car')
      todo_list = TodoList.new
      todo_list.add(todo)
      todo.mark_done!
      expect(todo_list.complete).to eq [todo]
    end
    it 'returns two complete todo' do
      todo1 = Todo.new('wash the car')
      todo2 = Todo.new('wash the dog')
      todo_list = TodoList.new
      todo_list.add(todo1)
      todo_list.add(todo2)
      todo1.mark_done!
      todo2.mark_done!
      expect(todo_list.complete).to eq [todo1, todo2]
    end
    it 'given 2 todos returns one complete' do
      todo1 = Todo.new('wash the car')
      todo2 = Todo.new('wash the dog')
      todo_list = TodoList.new
      todo_list.add(todo1)
      todo_list.add(todo2)
      todo1.mark_done!
      expect(todo_list.complete).to eq [todo1]
    end
  end

  it 'marks all complete if give_up' do
    todo_list = TodoList.new
    todo1 = Todo.new('wash the car')
    todo2 = Todo.new('wash the dog')
    todo3 = Todo.new('tidy up')
    todo_list.add(todo1)
    todo_list.add(todo2)
    todo_list.add(todo3)
    todo_list.give_up!
    expect(todo_list.complete).to eq [todo1, todo2, todo3]
  end
  it 'no incomplete left if give_up' do
    todo_list = TodoList.new
    todo1 = Todo.new('wash the car')
    todo2 = Todo.new('wash the dog')
    todo3 = Todo.new('tidy up')
    todo_list.add(todo1)
    todo_list.add(todo2)
    todo_list.add(todo3)
    todo_list.give_up!
    expect(todo_list.incomplete).to eq []
  end


end