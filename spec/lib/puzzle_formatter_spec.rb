require 'spec_helper'

describe ILoveSudoku::PuzzleFormatter do
  include TestPuzzlesAndSolutions

  context "with an incomplete puzzle" do
    it "returns a formatted puzzle" do
      puzzle = ILoveSudoku::PuzzleFormatter.new(easy_puzzle)
      expect(puzzle.to_s).to eq easy_puzzle_string
    end
  end

  context "with a complete puzzle" do
    it "returns a formatted puzzle" do
      puzzle = ILoveSudoku::PuzzleFormatter.new(easy_solution)
      expect(puzzle.to_s).to eq easy_solution_string
    end
  end
end
