class OrangeTree
  attr_reader :height
	attr_reader :age
  def initialize
    @height = 0
    @age = 0
    @orange_count = 0
  end

  def one_year_passes
    if @height < 50
      @height += 5
    end
    if @age < 100
      @age += 1
      fruit
    else
      puts "The orange tree has died."
      exit
    end
  end

  def fruit
    if age > 10
      @orange_count += 20
    elsif age > 20
      @orange_count += 40
    elsif age > 30
      @orange_count += 60
    else
      @orange_count += 0
    end
  end

  def count_the_oranges
      @orange_count
  end

  def pick_an_orange
      @orange_count -= 1
      puts "That was delicious!"
  end

end

tree = OrangeTree.new
20.times do
  tree.one_year_passes
end
puts(tree.one_year_passes)
puts(tree.count_the_oranges)
puts(tree.height)
puts(tree.pick_an_orange)
