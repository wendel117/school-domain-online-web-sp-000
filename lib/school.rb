class School

  attr_accessor :roster, :name, :grade

  def initialize(name, roster={})
    @name = name
    @roster = Hash.new{ |hash,key| hash[key] = [] } # intiatilizing an emtpty array with a default empty hash
  end

  def add_student(name, grade)
    #if @roster[grade] # is @roster[grade] already an array?
      @roster[grade] << name
    end

  def grade(grade)
    @roster[grade]
  end # end grade

  def sort
    @roster.each do |grade, students|
      students.sort!
    end
  end # end sort

end # end class
