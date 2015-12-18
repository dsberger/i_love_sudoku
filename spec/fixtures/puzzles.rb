module Puzzles
  # These puzzles were selected at random from websudoku.com and transcribed into matrix form.

  def easy
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

  def medium
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

  def hard
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

  def evil
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

  def one_cell_left
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

  def invalid_due_to_row_dupe
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

  def invalid_due_to_column_dupe
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

  def invalid_due_to_subgroup_dupe
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
end
