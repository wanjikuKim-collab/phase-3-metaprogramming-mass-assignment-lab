class Person
  # your code here
  def initialize(attributes)
    attributes.each do|key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=", value)
    end
  end
end

bob_attributes = { name: "Bob", hair_color: "Brown" }

bob = Person.new(bob_attributes)
puts bob.name       # => "Bob"
puts bob.hair_color # => "Brown"

susan_attributes = { name: "Susan", height: "5'11\"", eye_color: "Green" }

susan = Person.new(susan_attributes)
puts susan.name      # => "Susan"
puts susan.height    # => "5'11""
puts susan.eye_color # => "Green"
