require 'todo'
describe Todo do
  it 'fails if task is not a string' do
    todo = Todo.new(9)
    expect{ todo.task }.to raise_error 'Not a string!'
  end


end
