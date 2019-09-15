class School

  def initialize(name)
    @name = name
    @roster= {}
  end

  def roster
    return @roster
  end

  def add_student(name, grade)
    if @roster[grade]
      if !(@roster[grade].include?(name))
        @roster[grade] << name
      end
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(grade)
    return roster[grade]
  end

  def sort
    newHash = {}
    roster.each{|grade, student|
      newHash[grade] = student.sort
    }
    newHash
  end 

end

school = School.new("What")
school.add_student("AC Slater", 9)
school.add_student("Kelly Kapowski", 10)
school.add_student("Screech", 11)
school.add_student("Kelly Kapowski", 10)
puts school.grade(9)

# code here!