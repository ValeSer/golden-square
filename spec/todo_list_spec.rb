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


end