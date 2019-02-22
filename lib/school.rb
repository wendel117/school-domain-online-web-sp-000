# code here!
class School
attr_reader :name

#ROSTER = []
def initialize(name)
  @name = name
end

def roster=(roster)
  @roster = roster
  ROSTER << roster
end

end
