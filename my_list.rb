require_relative 'my_enumerable'

class MyList
  def initialize(*list)
    @list = list
  end

  include MyEnumerable

  def each
    i = 0
    while i < @list.length
      yield @list[i]
      i += 1
    end
  end
end

list = MyList.new(1, 2, 3, 4)
puts(list.all? { |e| e < 5 })
puts(list.all? { |e| e > 5 })
puts(list.any? { |e| e == 2 })
puts(list.any? { |e| e == 5 })
print "#{list.filter(&:even?)} \n"
