require "pry"

class School
  attr_accessor :name, :roster

  def initialize(name)
    @roster = {}
    @name = name
  end

  def add_student(student_name, grade)
    # if roster[grade].nil?
    #   roster[grade] = [student_name]
    # else
    #   roster[grade] << student_name
    # end

    roster[grade] ||= []
    roster[grade] << student_name
  end

  def grade(num)
    roster[num]
  end

  def sort
    return roster.sort.to_h
  end
end
