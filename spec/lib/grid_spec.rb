require 'spec_helper'

describe ILoveSudoku::Grid do
  include TestPuzzlesAndSolutions

  describe "#values_matrix" do
    context "with a complete board" do
      it "returns a matrix of completed values" do
        grid = ILoveSudoku::Grid.new_from_matrix(easy_solution)
        expect(grid.values_matrix).to eq easy_solution
      end
    end
  end

  describe "#possibilities_matrix" do
    context "with a complete board" do
      it "returns a 9x9 matrix of nils" do
        grid = ILoveSudoku::Grid.new_from_matrix(easy_solution)
        expect(grid.possibilities_matrix).to eq matrix_of_nils
      end
    end
  end

  describe "#solve!" do
    it "doesn't do anything to a complete array" do
      grid = ILoveSudoku::Grid.new_from_matrix(easy_solution)

      expect(grid.values_matrix).to eq easy_solution
    end

    it "completes a matrix with one cell left" do
      grid = ILoveSudoku::Grid.new_from_matrix(one_cell_left_puzzle)

      expect(grid.values_matrix).to eq easy_solution
    end
  end

  private

  def create_inverted_matrix(matrix)
    matrix.map do |row|
      row.map do |cell|
        cell.nil? ? (1..9).to_a : nil
      end
    end
  end

end
