$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift File.expand_path('../fixtures', __FILE__)

require 'i_love_sudoku'

# load objects
require 'array_validator'
require 'block_of_nine'
require 'cell'
require 'cell_matrix_creator'
require 'graph_searcher'
require 'grid'
require 'solution_validator'
require 'straight_line_creator'
require 'subgroup_creator'
require 'subgroup_validator'

# load fixtures
require 'puzzles'
require 'puzzle_solutions'
require 'helpers'
