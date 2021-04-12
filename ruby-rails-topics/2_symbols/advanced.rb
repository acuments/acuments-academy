module Constant
  FAVOURITE_ANIMAL = :dog
end

class Animal
  include Constant

  def initialize
    @animal = :dog
  end

  def favourite_animal
    @animal
  end
end

class Human

  def initialize
    @animal = fetch_animal
  end

  attr_accessor :animal

  private

  def fetch_animal
    :dog
  end
end

puts Constant::FAVOURITE_ANIMAL.object_id
puts Animal.new.favourite_animal.object_id
puts Human.new.animal.object_id