require 'spec_helper'

describe ILoveSudoku::GraphSearcher do
  include TestPuzzlesAndSolutions

  it 'solves an easy puzzle' do
    searcher = ILoveSudoku::GraphSearcher.new(easy_puzzle)
    expect(searcher.result).to eq easy_solution
  end

  it 'solves a medium puzzle' do
    searcher = ILoveSudoku::GraphSearcher.new(medium_puzzle)
    expect(searcher.result).to eq medium_solution
  end

  it 'solves a hard puzzle' do
    searcher = ILoveSudoku::GraphSearcher.new(hard_puzzle)
    expect(searcher.result).to eq hard_solution
  end

  it 'solves an evil puzzle' do
    searcher = ILoveSudoku::GraphSearcher.new(evil_puzzle)
    expect(searcher.result).to eq evil_solution
  end
end
