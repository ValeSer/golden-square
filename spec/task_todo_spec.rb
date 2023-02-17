require 'task_todo'

describe 'task_todo method' do
  it 'returns false when empty string' do
    expect(task_todo('')).to eq false
  end

  it 'returns false when #todo' do
    expect(task_todo('#todo')).to eq false
  end

  it 'returns true when #TODO' do
    expect(task_todo('#TODO')).to eq true
  end

  it 'returns false when #ToDo' do
  expect(task_todo('#ToDo')).to eq false
  end  

  it 'returns true when "THIS#TODO"' do
  expect(task_todo('THIS#TODO')).to eq true
  end 

  it 'returns true when "Lorem#TODOipsum"' do
  expect(task_todo('Lorem#TODOipsum')).to eq true
  end 

  it 'returns false when "TODO"' do
  expect(task_todo('TODO')).to eq false
  end 


end