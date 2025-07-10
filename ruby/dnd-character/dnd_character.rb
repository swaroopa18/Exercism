class DndCharacter
  # Base hit points all characters start with
  BASE_HITPOINTS = 10

  # Makes these attributes readable from outside the class
  attr_reader :strength, :dexterity, :constitution,
              :intelligence, :wisdom, :charisma, :hitpoints

  # Class method to calculate the D&D ability score modifier
  # For example: a constitution of 14 gives (14 - 10) / 2 = 2
  def self.modifier(constitution_param)
    return (constitution_param - 10) / 2
  end

  # Constructor: called when you create a new DndCharacter
  def initialize
    # Assign each ability score using the roll_dice method
    @strength = roll_dice
    @dexterity = roll_dice
    @constitution = roll_dice
    @intelligence = roll_dice
    @wisdom = roll_dice
    @charisma = roll_dice

    # Hit points are base HP + constitution modifier
    @hitpoints = BASE_HITPOINTS + DndCharacter.modifier(@constitution)
  end

  # Simulates rolling 4 six-sided dice and summing the best 3
  def roll_dice
    dice_array = Array.new(4) { rand(1..6) }   # Roll 4d6
    reduced_array = dice_array.max(3)          # Keep the highest 3 rolls
    reduced_array.sum                          # Return the sum of the best 3
  end
end
