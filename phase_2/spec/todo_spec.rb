require 'todo'
describe Todo do
  it 'fails if task is not a string' do
    expect{ Todo.new(9) }.to raise_error 'Invalid string!'
  end

  it 'fails if task is not a string' do
    expect{ Todo.new('') }.to raise_error 'Invalid string!'
  end

  it 'returns the task' do
    todo = Todo.new('wash the car')
    expect(todo.task).to eq 'wash the car'
  end

  it 'returns false if task is not done' do
    todo = Todo.new('wash the car')
    expect(todo.done?).to eq false
  end
  
  it 'returns true if task is done' do
    todo = Todo.new('wash the dog')
    todo.mark_done!
    expect(todo.done?).to eq true
  end


end
