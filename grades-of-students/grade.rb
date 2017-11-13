class Grade

  attr_reader :subject, :score

  def initialize(subject, score, student)
    @subject = subject
    @score = score
    @student = student
  end

end
