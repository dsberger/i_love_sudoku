module ILoveSudoku
  class Puzzle

    def initialize(matrix)
      @matrix = matrix
    end

    def unsolved_matrix
      @matrix
    end

    def solved_matrix
      GraphSearcher.new(@matrix).result
    end

    def unsolved_string
      PuzzleFormatter.new(@matrix).to_s
    end

    def solved_string
      PuzzleFormatter.new(solved_matrix).to_s
    end

  end
end
