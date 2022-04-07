require './MyEnumerable'

class MyList
  def initialize(list)
    @list = list
  end

  include MyEnumerable

  def each
    @list.each { |e| e.all? }
  end
end

list = MyList.new([1, 2, 3, 4])
puts list.all? { |e| e < 5 }