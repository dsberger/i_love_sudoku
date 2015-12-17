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
    [ [nil, nil, nil, 6, 1, nil, nil, 8, 5],
      [2, nil, nil, nil, nil, nil, nil, nil, nil],
      [8, nil, 5, nil, nil, 9, nil, 2, nil],
      [nil, nil, nil, nil, nil, 7, 5, 9, nil],
      [nil, 5, nil, nil, 2, nil, nil, 6, nil],
      [nil, 7, 9, 5, nil, nil, nil, nil, nil],
      [nil, 2, 3, nil, nil, nil, 6, nil, 1],
      [nil, nil, nil, nil, nil, nil, nil, nil, 4],
      [4, 3, nil, nil, 8, 5, nil, nil, nil] ]
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
end
