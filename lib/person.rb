require 'homework05/version'

class Person
  attr_accessor :name, :transformations

  def initialize(name)
    @name = name
    @transformations = Array.new
    self
  end

  def to_s
    if @transformations.empty?
      first_name = @name.to_s
      @transformations << first_name
      first_name
    else
      first_name = @transformations.last.to_s
      @transformations << first_name
      first_name
    end
  end

  def titlelize
    first_name = @name.capitalize
    @transformations << first_name
    first_name
  end

  def upcase
    first_name = @name.upcase
    @transformations << first_name
    first_name
  end
  
  def downcase
    first_name = @name.downcase
    @transformations << first_name
    first_name
  end
  
  def reverse
    first_name = @name.reverse
    @transformations << first_name
    first_name
  end
  
  def hyphenize
    first_name = @name.gsub(/(?<=\w)(?=\w)/, "-")
    @transformations << first_name
    first_name
  end
  
  def undo
    @transformations.pop
  end

end

# person = Person.new('giovanni')
# puts person.to_s
# puts person.titlelize
# puts person.transformations