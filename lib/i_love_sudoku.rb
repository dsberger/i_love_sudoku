require_relative "i_love_sudoku/version"

require 'array_validator'
require 'block_of_nine'
require 'cell'
require 'cell_matrix_creator'
require 'graph_searcher'
require 'grid'
require 'puzzle'
require 'puzzle_formatter'
require 'solution_validator'
require 'straight_line_creator'
require 'subgroup_creator'
require 'subgroup_validator'

module ILoveSudoku
  def self.new(matrix=nil)
    Puzzle.new(matrix)
  end
end
