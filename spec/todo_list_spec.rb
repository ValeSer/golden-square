require 'todo_list'

describe TodoList do
  context 'given no tasks' do
    it 'has an empty list' do
      todo_list = TodoList.new
      expect(todo_list.list).to eq []
    end
  end

  context 'given 1 task' do
    it 'returns one element' do
      todo_list = TodoList.new
      todo_list.add('Wash the car')
      expect(todo_list.list).to eq ['Wash the car']
    end
  end

  context 'given 2 different tasks' do
    it 'returns two elements' do
      todo_list = TodoList.new
      todo_list.add('Wash the car')
      todo_list.add('Wash the dog')
      expect(todo_list.list).to eq ['Wash the car', 'Wash the dog']
    end
  end

  context 'given 2 identical tasks' do
    it 'fails' do
      todo_list = TodoList.new
      todo_list.add('Wash the car')
      expect { todo_list.add('Wash the car') }.to raise_error 'Task already there'
    end
  end

context 'given a complete task' do
  it 'returns an array without that task' do
    todo_list = TodoList.new
    todo_list.add('Wash the car')
    todo_list.add('Wash the dog')
    todo_list.complete('Wash the car')
    expect(todo_list.list).to eq ['Wash the dog']
  end
end




end