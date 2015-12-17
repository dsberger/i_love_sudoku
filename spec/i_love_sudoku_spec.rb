require 'spec_helper'

describe ILoveSudoku do
  include Puzzles

  it 'has a version number' do
    expect(ILoveSudoku::VERSION).not_to be nil
  end

  it 'solves an easy puzzle' do
    expect(ILoveSudoku.solve(easy)).not_to eq false
  end

  it 'solves a medium puzzle' do
    expect(ILoveSudoku.solve(medium)).not_to eq false
  end

  it 'solves a hard puzzle' do
    expect(ILoveSudoku.solve(hard)).not_to eq false
  end

  it 'solves an evil puzzle' do
    expect(ILoveSudoku.solve(evil)).not_to eq false
  end
end
