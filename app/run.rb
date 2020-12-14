require 'pry'
require 'require_all'

require_all 'models'


spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")
jon = Student.new("jon")
ben = Student.new("ben")

puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")

first_test = BoatingTest.new(patrick, "101", "passed", puff)
second_test = BoatingTest.new(jon, "101", "passed", puff)
third_test = BoatingTest.new(ben, "101", "failed", puff)


# no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
# power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
# power_steering_pass = patrick.add_boating_test("Power Steering 201", "passed", krabs)
p puff.pass_student(ben, "202")

0
