module MyEnumerable
  
  def all?
    answ = true
    @list.each { |ele| answ = false if ele == false || ele == nil } unless block_given?
    each { |ele| answ = false unless yield(ele) } if block_given?
    answ
  end

  def any?
    answ = false
    @list.each { |ele| answ = true if ele != false || ele != nil } unless block_given?
    each { |ele| answ = true if yield(ele) } if block_given?
    answ
  end

  def filter
    arr = []
    each { |num| arr.push(num) if yield(num) }
    arr
  end
end
