# code here!
class School
  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = Hash.new
  end

  def add_student(name, year)
    @roster[year] << name
  end
end
