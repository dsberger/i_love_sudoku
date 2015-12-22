require 'spec_helper'

describe ILoveSudoku::Puzzle do
  include TestPuzzlesAndSolutions

  describe ".new" do
  end

  describe "#unsolved_matrix" do
    context "when created with a full, valid matrix" do
      it "returns that same matrix" do
        puzzle = ILoveSudoku::Puzzle.new(easy_puzzle)
        expect(puzzle.unsolved_matrix).to eq easy_puzzle
      end

      it "returns the same matrix after calling #solved_matrix" do
        puzzle = ILoveSudoku::Puzzle.new(easy_puzzle)
        puzzle.solved_matrix
        expect(puzzle.unsolved_matrix).to eq easy_puzzle
      end
    end
  end

  describe "#unsolved_string" do
    context "when created with a full, valid matrix" do
      it "returns the matrix formatted as a string" do
        puzzle = ILoveSudoku::Puzzle.new(easy_puzzle)
        expect(puzzle.unsolved_string).to eq easy_puzzle_string
      end
    end
  end

  describe "#solved_matrix" do
    it "returns the solved matrix" do
      puzzle = ILoveSudoku::Puzzle.new(easy_puzzle)
      expect(puzzle.solved_matrix).to eq easy_solution
    end
  end

  describe "#solved_string" do
    it "returns a formatted, solved string" do
      puzzle = ILoveSudoku::Puzzle.new(easy_puzzle)
      expect(puzzle.solved_string).to eq easy_solution_string
    end
  end
end
