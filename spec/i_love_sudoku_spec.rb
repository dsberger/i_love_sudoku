require 'spec_helper'

describe ILoveSudoku do
  include Puzzles
  include PuzzleSolutions

  it 'has a version number' do
    expect(ILoveSudoku::VERSION).not_to be nil
  end

  it 'solves an easy puzzle' do
    expect(ILoveSudoku.solve(easy)).to eq easy_solution
  end

  it 'solves a medium puzzle' do
    expect(ILoveSudoku.solve(medium)).to eq medium_solution
  end

  it 'solves a hard puzzle' do
    expect(ILoveSudoku.solve(hard)).to eq hard_solution
  end

  it 'solves an evil puzzle' do
    expect(ILoveSudoku.solve(evil)).to eq evil_solution
  end
end
