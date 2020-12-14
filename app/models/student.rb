class Student
  attr_reader :s_name
  @@all = []
  def initialize(s_name)
    @s_name = s_name
    @@all << self
  end

  def self.all
    @@all
  end

  def all_me
    BoatingTest.all.select do |test|
      test.student == self
    end
  end

  def all_instructors
    all_me.map(&:instructor)
  end

  def add_boating_test(s_name, test_name, status, i_name)
    BoatingTest.new(s_name, test_name, status, i_name)
  end


  


end
