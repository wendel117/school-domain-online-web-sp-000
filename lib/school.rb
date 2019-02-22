# code here!
class School
attr_reader :name

ROSTERS = []
def initialize(name)
  @name = name
end

def roster=(roster)
  @roster = roster
  ROSTERS << roster
end

end
