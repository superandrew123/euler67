class TriPathSolution

  attr_accessor :triangle, :result

  def initialize
    @triangle = TriReader.read
    @result = 0
  end

  def solve_wrong
    # Returns the wrong sum. This navigates the triangle going from top to bottom
    # picking the largest number available each time but does not accomodate for the
    # the option that bigger numbers may be below smaller ones.
    position = 0
    @triangle.each do |row, i|
      if i == 0
        @result = row[position]
      elsif row[position] > row[position + 1]
        @result += row[position]
      else
        @result += row[position + 1]
        position += 1
      end
    end
    puts result
  end

  def solve
    # Starting from the bottom, this method will move up the triangle coming up with
    # maximum values at each step. The top number will eventually the optimal sum.
  end
end


class TriReader

  def self.read
    tri_string = File.read("p067_triangle.txt")
    tri_array = tri_string.split("\n")
    tri_array.each_with_index do |row, i|
      if i == 0
        tri_array[i] = row.to_i
      end
      tri_array[i] = row.split(" ")
      tri_array[i].each_with_index do |num, j|
        tri_array[i][j] = num.to_i
      end
    end
    tri_array
  end
end