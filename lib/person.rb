require 'homework05/version'

class Person
  attr_accessor :name

  def initialize(name)
    @name = name
    self
  end

  def to_s
    @first_name = @name.to_str
    self
  end

  def titlelize
    @first_name = @name.capitalize
    self
  end

  def upcase
    @first_name = @name.upcase
    self
  end
  
  def downcase
    @first_name = @name.downcase
    self
  end
  
  def reverse
    @first_name = @name.reverse
    self
  end
  
  def hyphenize
    @first_name = @name.gsub('', '-')
    self
  end
  
  def display
    @first_name
  end
  
  def undo
  end

end

# person = Person.new('giovanni')
# puts person.to_s.titlelize.display
# puts person.upcase.display
# puts person.downcase.display
# puts person.reverse.display
# puts person.hyphenize.display