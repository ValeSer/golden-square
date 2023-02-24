require 'todo_list'

describe TodoList do
  it 'has initially an empty list of complete todos' do
    todo_list = TodoList.new
    expect(todo_list.complete).to eq []
  end
  it 'has initially an empty list of incomplete todos' do
    todo_list = TodoList.new
    expect(todo_list.complete).to eq []
  end
  
  



end