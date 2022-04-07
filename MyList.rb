require './MyEnumerable'

class MyList
  def initialize(list)
    @list = list
  end

  include MyEnumerable

  def each
    i = 0;
    until i == @list.length do
       yield @list[i]
      i += 1;
    end
  end
end

list = MyList.new([1, 2, 3, 4])
puts list.filter { |e| e.even? }
