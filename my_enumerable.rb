module MyEnumerable
  def all?
    answ = true
    @list.each { |e| answ = false unless e } unless block_given?
    each { |e| answ = false unless yield(e) } if block_given?
    answ
  end

  def any?
    answ = false
    @list.each { |e| answ = true if e } unless block_given?
    each { |e| answ = true if yield(e) } if block_given?
    answ
  end

  def filter
    arr = []
    each { |num| arr.push(num) if yield(num) }
    arr
  end
end
