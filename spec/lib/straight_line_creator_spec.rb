require 'spec_helper'

describe ILoveSudoku::StraightLineCreator do
  include TestPuzzlesAndSolutions

  let(:cell_matrix){ ILoveSudoku::CellMatrixCreator.new(easy_solution).cell_matrix }
  let(:creator){ ILoveSudoku::StraightLineCreator.new(cell_matrix) }

  describe "#lines" do
    it "returns an array" do
      expect(creator.lines).to be_a Array
    end

    it "has nine items" do
      expect(creator.lines.length).to eq 9
    end

    it "contains only BlockOfNine objects" do
      all_block_of_nines = creator.lines.all? do |item|
        item.is_a?(ILoveSudoku::BlockOfNine)
      end
      expect(all_block_of_nines).to eq true
    end
  end
end
