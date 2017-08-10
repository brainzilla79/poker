  require_relative "card.rb"

class Hand
  attr_reader :cards, :value

  def initialize(cards)
    raise ArgumentError if cards.length != 5
    @cards = cards
  end

  def face_values
    @cards.map(&:value)
  end

  def num_values
    @cards.map(&:number_value)
  end

  def suits
    # @cards.map(&:suit)
  end

  def four_of_a_kind?
    # face_values.combination(4).any? do |quad_combo|
    #   quad_combo.uniq.size == 1
    # end
  end

  def three_of_a_kind?
    # face_values.combination(3).any? do |trip_combo|
    #   trip_combo.uniq.size == 1
    # end
  end

  def pairs
    # pairs = []
    # face_values.combination(2).each do |pair|
    #   pairs << pair if pair.uniq.size == 1 && !pairs.include?(pair)
    # end
    # pairs
  end

  def two_pair?
    # pairs.size == 2
  end

  def pair?
    # pairs.size == 1
  end

  def flush?
    # suits.uniq.size == 1
  end

  def straight?
    # sorted = @cards.sort.dup
    # last_num = sorted.first
    # sorted[1..-1].each do |num|
    #   return false if num - last_num != 1
    #   last_num = num
    # end
    # true
  end

  def straight_flush?
    # straight? && flush?
  end
end
