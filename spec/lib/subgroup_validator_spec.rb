require 'spec_helper'

describe ILoveSudoku::SubgroupValidator do
  include TestPuzzlesAndSolutions

  describe "#valid?" do
    it "returns true when valid and complete" do
      validator = ILoveSudoku::SubgroupValidator.new(easy_solution)
      expect(validator.valid?).to eq true
    end

    it "returns true when valid and incomplete" do
      validator = ILoveSudoku::SubgroupValidator.new(easy_puzzle)
      expect(validator.valid?).to eq true
    end

    it "returns false when invalid due to subgroup dupe" do
      validator = ILoveSudoku::SubgroupValidator.new(invalid_due_to_subgroup_dupe_puzzle)
      expect(validator.valid?).to eq false
    end
  end
end
