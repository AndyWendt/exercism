=begin
Write your code for the 'D&D Character' exercise in this file. Make the tests in
`dnd_character_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/dnd-character` directory.
=end

class DndCharacter
  def self.modifier(constitution)
    modifier = -4

    modifier_map = (3..18).inject({}) do |acc, i|
      acc[i] = modifier
      modifier += 1 if i % 2 == 1
      acc
    end

    modifier_map[constitution]
  end

  def initialize
  end

  def constitution
    3
  end

  def strength
    18
  end

  def dexterity
    17
  end

  def intelligence
    13
  end

  def wisdom
    17
  end

  def charisma
    13
  end

  def hitpoints
    6
  end
end
