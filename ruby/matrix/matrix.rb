class Matrix
  def initialize(grid)
    @grid = grid
  end

  def rows
    rows = @grid.split("\n")
    rows.map { |row| row.split(" ").map(&:to_i) }
  end
end
