class DiagonalDifference
  def self.count(size, matrix)
    primary_x    = 0
    secondary_x  = 0
    for i in 0..(size - 1) do
      primary_x   += matrix[i][i]
      secondary_x += matrix[i][(size - 1) - i]
    end

    (primary_x - secondary_x).abs
  end
end
