require 'task_todo'

describe 'task_todo method' do
  it 'returns false when empty string' do
    expect(task_todo('')).to eq false
  end


end