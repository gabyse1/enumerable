module MyEnumerable
  def all?
    puts 'gaby'
  end

  def filter
    arr = []
    each { |num| arr.push(num) if yield(num) }
    arr
  end
end
