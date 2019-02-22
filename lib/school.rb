class School
  def initialize
    @grades = Hash.new { |hash, key| hash[key] = Grade.new }
  end

  def add(student, grade)
    grades[grade].add(student)
    self
  end

  def grade(grade_number)
    grades[grade_number].db
  end

  def db
    grades.each_with_object({}) { |(grade_number, grade), hash|
      hash[grade_number] = grade.db
    }
  end

  def sort
    grades.sort.each_with_object({}) { |(grade_number, grade), hash|
      hash[grade_number] = grade.sort
    }
  end
