class Instructor
  attr_accessor :i_name
  @@all = []
  def initialize(i_name)
    @i_name = i_name
    @@all << self
  end

  def self.all
    @@all
  end

  def all_tests
    BoatingTest.all.select do |test|
      test.instructor == self
    end
  end

  def all_students
    all_tests.map(&:student)
  end

  def passed_students
    passed = self.all_tests.select{ |test| test.status == "passed"}
    passed.map(&:student)
  end

  def pass_student(student, test_name)
    isTest = false
    BoatingTest.all.each do |test|
      if test.student == student && test.test_name == test_name
        test.status = "passed"
        isTest = true
        return test
      end
    end
    if !isTest
      student = BoatingTest.new(student, test_name, "passed", self)
      student
    end
  end

  def fail_student(student,test_name)
    isTest = false
    BoatingTest.all.each do |test|
      if test.student == student && test.test_name == test_name
        test.status = "failed"
        isTest = true
        return test
      end
    end
    if !isTest
      student = BoatingTest.new(student, test_name, "failed", self)
      student
    end
  end



end
