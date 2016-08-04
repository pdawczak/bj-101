user = {first_name: "Pawel", last_name: "Dawczak"}

def full_name(user)
  "#{user[:first_name]} #{user[:last_name]}"
end

full_name(user)

class User
  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  # reader
  def age
    @age
  end

  # writer
  def age=(age)
    @age = age
  end

  def birthday
    @age = @age + 1
  end

  def adult?
    @age >= 18
  end

  def full_name
    if adult?
      "#{@first_name} #{@last_name}"
    else
      "Baby #{@first_name}"
    end
  end

  def greet(another_user)
    # @first_name + " " + @last_name + ": Hello " + another_user.first_name + "!"
    "#{first_name}: Hello #{another_user.full_name}!"
  end
end

# Objects:
# Class is more like a template,
# but object is an instance of a class.
pawel = User.new("Pawel", "Dawczak", 29)
vj = User.new("Vijay", "Prasad", 35)
lena = User.new("Lena", "Dawczak", 1)

# p pawel.greet(vj)
# p pawel.greet(lena)
p pawel.inspect
pawel.age = 30
pawel.birthday
p pawel.inspect
# p vj.greet(pawel).length.even?
# p pawel.last_name
# p pawel
# p pawel.full_name
# p pawel.inspect
# p pawel.methods
