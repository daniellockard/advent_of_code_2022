class Elf
  attr_accessor :calories, :id
  def initialize(id, foodbits)
    @id = id
    @food = foodbits
    @calories = foodbits.sum
  end
end

input = File.readlines("input.txt")
elf_count = 1

individual_elf = Array.new
elves = Array.new

input.each do |element|
  internal_element = element.strip
  if internal_element == ""
   elves.push(Elf.new(elf_count, individual_elf))
   internal_element = Array.new
   individual_elf = Array.new
   elf_count = elf_count + 1
  else
   individual_elf.push(internal_element.to_i)
  end
end

elf = elves.max_by { |element| element.calories }
puts elf.calories
