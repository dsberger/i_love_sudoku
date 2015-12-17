require "matrix_tools"

module ILoveSudoku
  class ArrayValidator
    include MatrixTools

    def initialize(matrix)
      @matrix = matrix
    end

    def valid?
      matrix.map { |row| has_duplicates?(row) }.none?
    end


    private

    attr_reader :matrix

  end
end
