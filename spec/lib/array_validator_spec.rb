require 'spec_helper'

describe ILoveSudoku::ArrayValidator do
  include TestPuzzlesAndSolutions

  describe "#valid?" do
    context "as row validator" do
      it "returns true when valid and complete" do
        validator = ILoveSudoku::ArrayValidator.new(easy_solution)
        expect(validator.valid?).to eq true
      end

      it "returns true when valid and incomplete" do
        validator = ILoveSudoku::ArrayValidator.new(easy_puzzle)
        expect(validator.valid?).to eq true
      end

      it "returns false when invalid due to row dupe" do
        validator = ILoveSudoku::ArrayValidator.new(invalid_due_to_row_dupe_puzzle)
        expect(validator.valid?).to eq false
      end
    end

    context "as column validator with transposed input" do
      it "returns true when valid and complete" do
        validator = ILoveSudoku::ArrayValidator.new(easy_solution.transpose)
        expect(validator.valid?).to eq true
      end

      it "returns true when valid and incomplete" do
        validator = ILoveSudoku::ArrayValidator.new(easy_puzzle.transpose)
        expect(validator.valid?).to eq true
      end

      it "returns false when invalid due to column dupe" do
        validator = ILoveSudoku::ArrayValidator.new(invalid_due_to_column_dupe_puzzle.transpose)
        expect(validator.valid?).to eq false
      end
    end
  end
end
