require 'spec_helper'

describe ILoveSudoku::Puzzle do
  include TestPuzzlesAndSolutions

  describe "#unsolved_matrix" do
    context "when created with no input" do
      it "returns an empty matrix with no further input" do
        puzzle = ILoveSudoku::Puzzle.new()
        expect(puzzle.unsolved_matrix).to eq matrix_of_nils
      end
    end

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

    context "when created with no input" do
      it "returns an empty board with no further input" do
        puzzle = ILoveSudoku::Puzzle.new()
        expect(puzzle.unsolved_string).to eq blank_board_string
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

  describe "#edit_row" do
    context "when properly formatted" do
      it "changes the row in question" do
        puzzle = ILoveSudoku::Puzzle.new()
        puzzle.edit_row(0,"3..4..678")
        arr = [3, nil, nil, 4, nil, nil, 6, 7, 8]
        expect(puzzle.unsolved_matrix[0]).to eq arr
      end

      it "overwrites an existing row" do
        puzzle = ILoveSudoku::Puzzle.new()
        puzzle.edit_row(0,"...4..678")
        puzzle.edit_row(0,"3..4..678")
        arr = [3, nil, nil, 4, nil, nil, 6, 7, 8]
        expect(puzzle.unsolved_matrix[0]).to eq arr
      end
    end
  end
end
