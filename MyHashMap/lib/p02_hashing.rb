class Fixnum
  # Fixnum#hash already implemented for you
end

class Array
  def hash
    arr = self.map.with_index do |el, idx|
      idx.to_s + el.to_s
    end
    arr.join.to_i.hash
  end
end

class String
  def hash
  arr = Array.new
    self.each_char do |el|
      arr << el
    end
    p arr
    arr.hash
  end
end

class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hash
    0
  end
end
