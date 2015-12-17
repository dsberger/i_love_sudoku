require 'spec_helper'

describe ILoveSudoku::BlockOfNine do

  describe "#hit!" do
    it "returns true when it solves a cell" do
      block = ILoveSudoku::BlockOfNine.new
      found_values = (1..6).to_a

      found_values.each do |num|
        block.add_cell(ILoveSudoku::Cell.new(num))
      end

      cell_a = ILoveSudoku::Cell.new
      cell_b = ILoveSudoku::Cell.new
      cell_c = ILoveSudoku::Cell.new

      [cell_a, cell_b, cell_c].each do |cell|
        found_values.each { |num| cell.remove!(num) }
      end

      cell_a.remove!(7)
      cell_b.remove!(7)

      block.add_cell(cell_a)
      block.add_cell(cell_b)
      block.add_cell(cell_c)

      expect(block.hit!).to eq true
    end

    it "returns true when it clears a possible value" do
      block = ILoveSudoku::BlockOfNine.new
      block.add_cell(ILoveSudoku::Cell.new(7))
      block.add_cell(ILoveSudoku::Cell.new)
      expect(block.hit!).to eq true
    end

    it "returns false when neither solves a cell nor clears any values" do
      block = ILoveSudoku::BlockOfNine.new
      found_values = (1..7).to_a

      found_values.each do |num|
        block.add_cell(ILoveSudoku::Cell.new(num))
      end

      cell_a = ILoveSudoku::Cell.new
      cell_b = ILoveSudoku::Cell.new

      [cell_a, cell_b].each do |cell|
        found_values.each { |num| cell.remove!(num) }
      end

      block.add_cell(cell_a)
      block.add_cell(cell_b)

      expect(block.hit!).to eq false
    end

  end
end
