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

  attr_reader :constitution, :strength, :dexterity, :intelligence, :wisdom, :charisma

  def initialize
    @constitution = ability_score
    @strength = ability_score
    @dexterity = ability_score
    @intelligence = ability_score
    @wisdom = ability_score
    @charisma = ability_score
  end

  def hitpoints
    DndCharacter.modifier(constitution) + 10
  end

  private

  def ability_score
    [roll, roll, roll, roll].sort[1...4].sum
  end

  def roll
    rand(1..6)
  end
end
