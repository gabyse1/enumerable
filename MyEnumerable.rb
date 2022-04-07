module MyEnumerable
  def all?
    puts 'gaby'
    yield(@list)
  end
end