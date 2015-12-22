module ILoveSudoku
  class Puzzle

    def initialize(matrix=nil)
      @matrix = matrix ||= blank_matrix
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

    def edit_row(index, str)
      arr = []
      str.each_char do |char|
        arr << (char == "." ? nil : char.to_i)
      end
      @matrix[index] = arr
    end

    private

    def blank_matrix
      arr = []
      9.times { arr << [nil] * 9 }
      arr
    end

  end
end
