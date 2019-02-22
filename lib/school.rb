
class School
attr_accessor :roster

def initialize(name)
  @name = name
  @roster = Hash.new
end

def name
  @name 
end

end
