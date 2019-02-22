require 'pri'
class School
attr_accessor :roster, :name, :grade

def initialize(name)
  @name = name
  @roster = Hash.new
end

def name
  @name
end

def add_student(name, grade)
  @roster[grade] << name
end

def grade
end

def sort
end


end
