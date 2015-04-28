class TriangleMaximizer

  attr_accessor :triangle

  def initialize
    @triangle = TriReader.read
  end

end
class TriReader

  def self.read
    tri_string = File.read("p067_triangle.txt")
    tri_array = tri_string.split("\n")
    tri_array.each_with_index do |row, i|
      if i == 0
        tri_array[i] = [row.to_i]
      end
      tri_array[i] = row.split(" ")
      tri_array[i].each_with_index do |num, j|
        tri_array[i][j] = num.to_i
      end
    end
    tri_array
  end
end