require 'spec_helper'

describe ILoveSudoku::SubgroupValidator do
  include Helpers

  describe "#valid?" do
    it "returns true when valid and complete" do
      validator = ILoveSudoku::SubgroupValidator.new(valid_complete)
      expect(validator.valid?).to eq true
    end

    it "returns true when valid and incomplete" do
      validator = ILoveSudoku::SubgroupValidator.new(valid_incomplete)
      expect(validator.valid?).to eq true
    end

    it "returns false when invalid due to subgroup dupe" do
      validator = ILoveSudoku::SubgroupValidator.new(invalid_due_to_subgroup_dupe)
      expect(validator.valid?).to eq false
    end
  end
end
