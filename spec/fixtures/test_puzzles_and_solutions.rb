module TestPuzzlesAndSolutions
  # These puzzles were selected at random from websudoku.com and transcribed into matrix form.

  def easy_puzzle
    [ [nil, 7, nil, nil, nil, nil, 5, nil, nil],
      [nil, nil, nil, nil, 5, 1, nil, nil, nil],
      [nil, nil, nil, 3, 7, 9, 2, 6, 8],
      [1, 2, nil, nil, 8, nil, 4, nil, 6],
      [nil, 4, nil, nil, nil, nil, nil, 9, nil],
      [9, nil, 3, nil, 2, nil, nil, 8, 5],
      [8, 9, 7, 2, 4, 3, nil, nil, nil],
      [nil, nil, nil, 6, 1, nil, nil, nil, nil],
      [nil, nil, 2, nil, nil, nil, nil, 4, nil] ]
  end

  def easy_puzzle_string
    [".7.|...|5..",
     "...|.51|...",
     "...|379|268",
     "---+---+---",
     "12.|.8.|4.6",
     ".4.|...|.9.",
     "9.3|.2.|.85",
     "---+---+---",
     "897|243|...",
     "...|61.|...",
     "..2|...|.4."].join("\n")
  end

  def easy_solution
    [ [3, 7, 9, 8, 6, 2, 5, 1, 4],
      [2, 8, 6, 4, 5, 1, 3, 7, 9],
      [4, 5, 1, 3, 7, 9, 2, 6, 8],
      [1, 2, 5, 9, 8, 7, 4, 3, 6],
      [7, 4, 8, 5, 3, 6, 1, 9, 2],
      [9, 6, 3, 1, 2, 4, 7, 8, 5],
      [8, 9, 7, 2, 4, 3, 6, 5, 1],
      [5, 3, 4, 6, 1, 8, 9, 2, 7],
      [6, 1, 2, 7, 9, 5, 8, 4, 3] ]
  end

  def easy_solution_string
    ["379|862|514",
     "286|451|379",
     "451|379|268",
     "---+---+---",
     "125|987|436",
     "748|536|192",
     "963|124|785",
     "---+---+---",
     "897|243|651",
     "534|618|927",
     "612|795|843"].join("\n")
  end

  def medium_puzzle
    [ [nil, nil, nil, 6, 5, 2, nil, 7, nil],
      [nil, 6, 7, nil, 1, nil, nil, nil, 9],
      [nil, nil, 3, 4, nil, nil, nil, nil, nil],
      [nil, nil, nil, 9, nil, 7, nil, 1, 8],
      [nil, nil, 8, nil, 4, nil, 9, nil, nil],
      [2, 1, nil, 5, nil, 6, nil, nil, nil],
      [nil, nil, nil, nil, nil, 4, 6, nil, nil],
      [9, nil, nil, nil, 6, nil, 8, 4, nil],
      [nil, 8, nil, 2, 3, 1, nil, nil, nil] ]
  end

  def medium_solution
    [ [8, 9, 1, 6, 5, 2, 3, 7, 4],
      [4, 6, 7, 3, 1, 8, 2, 5, 9],
      [5, 2, 3, 4, 7, 9, 1, 8, 6],
      [3, 4, 6, 9, 2, 7, 5, 1, 8],
      [7, 5, 8, 1, 4, 3, 9, 6, 2],
      [2, 1, 9, 5, 8, 6, 4, 3, 7],
      [1, 7, 5, 8, 9, 4, 6, 2, 3],
      [9, 3, 2, 7, 6, 5, 8, 4, 1],
      [6, 8, 4, 2, 3, 1, 7, 9, 5] ]
  end

  def hard_puzzle
    [ [8, 3, nil, nil, nil, 6, 9, nil, nil],
      [nil, nil, nil, nil, 8, nil, 7, nil, nil],
      [nil, 4, nil, nil, nil, 9, nil, nil, nil],
      [5, nil, nil, 9, nil, 3, 2, 6, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, 7, 6, 4, nil, 5, nil, nil, 1],
      [nil, nil, nil, 5, nil, nil, nil, 1, nil],
      [nil, nil, 7, nil, 1, nil, nil, nil, nil],
      [nil, nil, 3, 6, nil, nil, nil, 5, 8] ]
  end

  def hard_solution
    [ [8, 3, 1, 7, 5, 6, 9, 4, 2],
      [9, 6, 2, 1, 8, 4, 7, 3, 5],
      [7, 4, 5, 2, 3, 9, 1, 8, 6],
      [5, 1, 8, 9, 7, 3, 2, 6, 4],
      [2, 9, 4, 8, 6, 1, 5, 7, 3],
      [3, 7, 6, 4, 2, 5, 8, 9, 1],
      [6, 8, 9, 5, 4, 2, 3, 1, 7],
      [4, 5, 7, 3, 1, 8, 6, 2, 9],
      [1, 2, 3, 6, 9, 7, 4, 5, 8] ]
  end

  def evil_puzzle
    [ [nil, 2, 9, nil, 1, nil, nil, 7, nil],
      [nil, 5, nil, nil, nil, 7, nil, nil, 9],
      [nil, nil, 4, nil, nil, nil, nil, nil, nil],
      [nil, nil, 5, 9, nil, nil, nil, nil, 6],
      [nil, nil, nil, 5, 8, 6, nil, nil, nil],
      [6, nil, nil, nil, nil, 4, 2, nil, nil],
      [nil, nil, nil, nil, nil, nil, 3, nil, nil],
      [7, nil, nil, 3, nil, nil, nil, 5, nil],
      [nil, 1, nil, nil, 9, nil, 8, 6, nil] ]
  end

  def evil_solution
    [ [8, 2, 9, 6, 1, 3, 5, 7, 4],
      [3, 5, 6, 8, 4, 7, 1, 2, 9],
      [1, 7, 4, 2, 5, 9, 6, 3, 8],
      [4, 3, 5, 9, 2, 1, 7, 8, 6],
      [2, 9, 7, 5, 8, 6, 4, 1, 3],
      [6, 8, 1, 7, 3, 4, 2, 9, 5],
      [9, 6, 8, 1, 7, 5, 3, 4, 2],
      [7, 4, 2, 3, 6, 8, 9, 5, 1],
      [5, 1, 3, 4, 9, 2, 8, 6, 7] ]
  end

  def one_cell_left_puzzle
    [ [3, 7, 9, 8, 6, 2, 5, 1, 4],
      [2, 8, 6, 4, 5, 1, 3, 7, 9],
      [4, 5, 1, 3, 7, 9, 2, 6, 8],
      [1, 2, 5, 9, 8, 7, 4, 3, 6],
      [7, 4, 8, 5, nil, 6, 1, 9, 2],
      [9, 6, 3, 1, 2, 4, 7, 8, 5],
      [8, 9, 7, 2, 4, 3, 6, 5, 1],
      [5, 3, 4, 6, 1, 8, 9, 2, 7],
      [6, 1, 2, 7, 9, 5, 8, 4, 3] ]
  end

  def invalid_due_to_row_dupe_puzzle
    [ [3, 7, 9, 8, 6, 2, 5, 1, 4],
      [2, 8, 6, 4, 5, 1, 3, 7, 9],
      [4, 5, 1, 3, 7, 9, 2, 6, 8],
      [1, 2, 5, 9, 8, 7, 4, 3, 6],
      [7, 4, 8, 5, 1, 6, 1, 9, 2],
      [9, 6, 3, 1, 2, 4, 7, 8, 5],
      [8, 9, 7, 2, 4, 3, 6, 5, 1],
      [5, 3, 4, 6, nil, 8, 9, 2, 7],
      [6, 1, 2, 7, 9, 5, 8, 4, 3] ]
  end

  def invalid_due_to_column_dupe_puzzle
    [ [3, 7, 9, 8, 6, 2, 5, 1, 4],
      [2, 8, 6, 4, 5, 1, 3, 7, 9],
      [4, 5, 1, 3, 7, 9, 2, 6, 8],
      [1, 2, 5, 9, 8, 7, 4, 3, 6],
      [7, 4, 8, 5, 3, 6, 1, 9, 2],
      [9, 6, 3, 1, 2, 4, 7, 8, 5],
      [nil, 9, 8, 2, 4, 3, 6, 5, 1],
      [5, 3, 4, 6, 1, 8, 9, 2, 7],
      [6, 1, 2, 7, 9, 5, 8, 4, 3] ]
  end

  def invalid_due_to_subgroup_dupe_puzzle
    [ [1, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, 1, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil] ]
  end

  def matrix_of_nils
    matrix = []
    9.times { matrix << [nil] * 9 }
    matrix
  end

  def blank_board_string
    ["...|...|...",
     "...|...|...",
     "...|...|...",
     "---+---+---",
     "...|...|...",
     "...|...|...",
     "...|...|...",
     "---+---+---",
     "...|...|...",
     "...|...|...",
     "...|...|..."].join("\n")
  end

end
