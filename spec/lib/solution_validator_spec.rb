require 'spec_helper'

describe ILoveSudoku::SolutionValidator do
  include Puzzles
  include PuzzleSolutions

  describe "valid?" do
    it "returns true when valid and incomplete" do
      validator = ILoveSudoku::SolutionValidator.new(easy)
      expect(validator.valid?).to eq true
    end

    it "returns true when valid and complete" do
      validator = ILoveSudoku::SolutionValidator.new(easy_solution)
      expect(validator.valid?).to eq true
    end

    it "returns false with a column dupe" do
      validator = ILoveSudoku::SolutionValidator.new(invalid_due_to_column_dupe)
      expect(validator.valid?).to eq false
    end

    it "returns false with a row dupe" do
      validator = ILoveSudoku::SolutionValidator.new(invalid_due_to_row_dupe)
      expect(validator.valid?).to eq false
    end

    it "returns false with a subgroup dupe" do
      validator = ILoveSudoku::SolutionValidator.new(invalid_due_to_subgroup_dupe)
      expect(validator.valid?).to eq false
    end
  end

  describe "complete?" do
    it "returns true with no nil values" do
      validator = ILoveSudoku::SolutionValidator.new(easy_solution)
      expect(validator.complete?).to eq true
    end

    it "returns false with one nil value" do
      validator = ILoveSudoku::SolutionValidator.new(easy)
      expect(validator.complete?).to eq false
    end
  end
end
