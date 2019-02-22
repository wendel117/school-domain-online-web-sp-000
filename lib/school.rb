# code here!
class School
attr_accessor :add_student
attr_reader :name, :roster

ROSTERS = []
def initialize(name)
  @name = name
end

def roster=(roster)
  @roster = roster
  ROSTERS << roster
end

end
