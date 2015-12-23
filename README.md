# I Love Sudoku

I Love Sudoku is a gem for solving any sudoku puzzle.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'i_love_sudoku'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install i_love_sudoku

## Usage

###`ILoveSudoku.new(matrix)`

You can create a new puzzle either with or without a ready-made matrix.

If you have a 9x9 nested array already, for example if you're using the gem in the context of a web app where that formatted object comes over from the front end, you can create a new puzzle with that array. Note that empty spaces are represented by `nil`.

```
$ matrix = [ [nil, 7, nil, nil, nil, nil, 5, nil, nil],
             [nil, nil, nil, nil, 5, 1, nil, nil, nil],
             [nil, nil, nil, 3, 7, 9, 2, 6, 8],
             [1, 2, nil, nil, 8, nil, 4, nil, 6],
             [nil, 4, nil, nil, nil, nil, nil, 9, nil],
             [9, nil, 3, nil, 2, nil, nil, 8, 5],
             [8, 9, 7, 2, 4, 3, nil, nil, nil],
             [nil, nil, nil, 6, 1, nil, nil, nil, nil],
             [nil, nil, 2, nil, nil, nil, nil, 4, nil] ]
$ puzzle = ILoveSudoku.new(matrix)
$ puts puzzle.unsolved_string
.7.|...|5..
...|.51|...
...|379|268
---+---+---
12.|.8.|4.6
.4.|...|.9.
9.3|.2.|.85
---+---+---
897|243|...
...|61.|...
..2|...|.4.
```

If you're playing with the gem in your terminal, it probably makes more sense to create a puzzle with no matrix and manually input the separate lines. See `#edit_row` for details.


```
$ puzzle = ILoveSudoku.new
$ puts puzzle.unsolved_string
...|...|...
...|...|...
...|...|...
---+---+---
...|...|...
...|...|...
...|...|...
---+---+---
...|...|...
...|...|...
...|...|...
```

###`#edit_row(row_number, string)`
This method takes the row number (indexed from 0) and a string of periods and integers and overwrites the existing row. This is a good way to manually enter a puzzle in your command line.

```
$ puzzle = ILoveSudoku.new
$ puzzle.edit_row(1, "3..4..678")
$ puts puzzle.unsolved_string
...|...|...
3..|4..|678
...|...|...
---+---+---
...|...|...
...|...|...
...|...|...
---+---+---
...|...|...
...|...|...
...|...|...
```

###`#unsolved_string` and `#unsolved_matrix`
Returns the current state of the puzzle input in string or matrix format.

###`#solved_string` and `#solved_matrix`
Returns the solved puzzle in string or matrix format.


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dsberger/i_love_sudoku.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

