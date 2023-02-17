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

  
end