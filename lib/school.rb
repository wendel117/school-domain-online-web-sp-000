require 'fis/test'


class School

  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = Hash.new { |h,k| h[k] = []}
  end

  def add_student(name, year)
    @roster[year] << name
  end

  def grade(year)
    @roster[year]
  end

  def sort
    Hash[@roster.collect{ |a| [a.first, sort_students(a.first)] }]
  end

  private # cannot be called with an explicit receiver. only implicit receiver

  def sort_students(year)
   grade(year).sort
  end
