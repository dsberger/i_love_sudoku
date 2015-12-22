module ILoveSudoku
  class PuzzleFormatter

    def initialize(matrix)
      @matrix = matrix
    end

    def to_s
      rows = matrix_with_rows_formatted
      [ rows[0..2].join("\n"),
        rows[3..5].join("\n"),
        rows[6..8].join("\n") ].join(divider)
    end

    private

    def matrix_with_rows_formatted
      matrix_with_nils_replaced.each_with_object([]) do |row, output|
        output << format_row(row)
      end
    end

    def matrix_with_nils_replaced
      @matrix.map do |row|
        row.map do |cell|
          cell.nil? ? "." : cell
        end
      end
    end

    def format_row(row)
      [ row[0..2].join(""),
        row[3..5].join(""),
        row[6..8].join("") ].join("|")
    end

    def divider
      "\n---+---+---\n"
    end

  end
end
