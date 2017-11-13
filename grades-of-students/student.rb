require_relative 'grade'

class Student

  def initialize(name, age, level, birthplace)
    @name = name
    @age = age
    @level = level
    @birthplace = birthplace
    @grades = []
  end

  # The same as attr_reader :name
  def name
    @name
  end

  # The same as attr_reader :age
  def age
    @age
  end

  # The same as attr_reader :level
  def level
    @level
  end

  # The same as attr_reader :birthplace
  def birthplace
    @birthplace
  end

  def add_grade(grade)
    @grades << grade
  end

  def math_grades
    auxiliary_array = []

    @grades.each do |grade|
      if grade.subject == "math"
        auxiliary_array << grade
      end
    end

    auxiliary_array.each do |math_grade|
      puts math_grade.score
    end
  end

end

jose = Student.new("Jose", 18, 10, "Equador")

grade1 = Grade.new("english", 7)
grade2 = Grade.new("espanish", 8)
grade3 = Grade.new("geography", 5)
grade4 = Grade.new("math", 10)
grade5 = Grade.new("math", 9)

jose.add_grade(grade1)
jose.add_grade(grade2)
jose.add_grade(grade3)
jose.add_grade(grade4)
jose.add_grade(grade5)

jose.math_grades

