require 'spec_helper'

describe ILoveSudoku::SubgroupCreator do
  include PuzzleSolutions

  let(:cell_matrix){ ILoveSudoku::CellMatrixCreator.new(easy_solution).cell_matrix }
  let(:creator){ ILoveSudoku::SubgroupCreator.new(cell_matrix) }

  describe "#subgroups" do
    it "returns an array" do
      expect(creator.subgroups).to be_a Array
    end

    it "has nine items" do
      expect(creator.subgroups.length).to eq 9
    end

    it "contains only BlockOfNine objects" do
      all_block_of_nines = creator.subgroups.all? do |item|
        item.is_a?(ILoveSudoku::BlockOfNine)
      end

      expect(all_block_of_nines).to eq true
    end
  end
end
