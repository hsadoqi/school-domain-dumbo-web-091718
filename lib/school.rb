# code here!

class School

  attr_accessor :roster

  def initialize(name)
    @name = name

    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade] == nil
      @roster[grade] = [name]
    else
      @roster[grade] << name
    end
  end

  def grade(grade)
    return @roster[grade]
  end

  def sort
    @roster.each do |key, value|
      @roster[key] = value.sort
    end
    @roster = @roster.sort.to_h
    return roster
  end

end
