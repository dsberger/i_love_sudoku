require 'spec_helper'

describe ILoveSudoku::GraphSearcher do
  include Puzzles
  include PuzzleSolutions

  it 'solves an easy puzzle' do
    searcher = ILoveSudoku::GraphSearcher.new(easy)
    expect(searcher.result).to eq easy_solution
  end

  it 'solves a medium puzzle' do
    searcher = ILoveSudoku::GraphSearcher.new(medium)
    expect(searcher.result).to eq medium_solution
  end

  it 'solves a hard puzzle' do
    searcher = ILoveSudoku::GraphSearcher.new(hard)
    expect(searcher.result).to eq hard_solution
  end

  it 'solves an evil puzzle' do
    searcher = ILoveSudoku::GraphSearcher.new(evil)
    expect(searcher.result).to eq evil_solution
  end
end
