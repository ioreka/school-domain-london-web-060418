# code here!
class School

  attr_accessor :roster

  def initialize(roster)
    @roster = {}
  end

  def add_student(name, grade)
    if @roster.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    school_hash = {}
    @roster.each do  |grade, names|
      school_hash[grade]=names.sort
    end
    school_hash
  end

end
