class Grid

  def initialize(grid=nil)
    @grid = grid || [
        [0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0]
      ]
  end

  def alive_neighbours(x, y)
    neighbours = 0
    alive?(x-1, y) + alive?(x+1, y) + alive?(x, y-1) + alive?(x, y+1) + alive?(x-1, y-1) + alive?(x+1, y-1)+ alive?(x-1, y+1) + alive?(x+1, y+1)
  end

  def next
    new_grid = @grid.dup
    next_generation_value(new_grid)
  end

  def to_s
    grid_to_string
  end

protected

  def next_generation_value(grid, row=0,col=0)
    if col < 5
      next_generation_value(grid, row, col+1)
    elsif row > 5
      return
    else
      next_generation_value(grid, row+1, 0)
    end

    grid[row][col] = 1 if alive_neighbours(row, col) < 2
  end

  def grid_to_string(row=0)
    return '' if row == 5
    @grid[row].join(" ") + "\n" + grid_to_string(row + 1)
  end

  def alive?(x, y)
    return 0 if (x < 0 || x > 4) || (y < 0 || y > 4)
    @grid[x][y]
  end

end
