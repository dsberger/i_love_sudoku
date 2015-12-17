require_relative "i_love_sudoku/version"

module ILoveSudoku

  def self.solve(matrix)
    GraphSearcher.new(matrix).result
  end
end
