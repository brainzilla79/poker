require 'rspec'
require 'hand'

describe Hand do

  describe '#initialize' do
    it 'raises error if there are not than 5 cards' do
      cards = %w(ace king queen jack ace queen)
      expect { Hand.new(cards) }.to raise_error(ArgumentError)
    end
  end
  let(:ace_spades) { double("ace_spades", :value => "A", :suit => :spades, :number_value => 14)}
  let(:ace_clubs) { double("ace_clubs", :value => "A", :suit => :clubs, :number_value => 14)}
  let(:ace_hearts) { double("ace_hearts", :value => "A", :suit => :hearts, :number_value => 14)}
  let(:ace_diams) { double("ace_diams", :value => "A", :suit => :diamonds, :number_value => 14)}
  let(:two_diams) { double("two_diams", :value => "2", :suit => :diamonds, :number_value => 2)}
  let(:two_clubs) { double("two_clubs", :value => "2", :suit => :clubs, :number_value => 2)}
  let(:four_clubs) { double("four_clubs", :value => "4", :suit => :clubs, :number_value => 4)}
  let(:three_clubs) { double("three_clubs", :value => "3", :suit => :clubs, :number_value => 3)}
  let(:jack_clubs) { double("jack_clubs", :value => "J", :suit => :clubs, :number_value => 11)}

  describe '#four_of_a_kind' do
    it 'returns true if hand has four of a kind' do
      cards = [ace_spades, ace_diams, ace_hearts, ace_clubs, two_diams]
      hand = Hand.new(cards)

      expect(hand.four_of_a_kind?).to be true
    end
  end

  describe '#three_of_a_kind' do
    it 'returns true if hand has three of a kind' do
      cards = [ace_spades, ace_diams, ace_hearts, ace_clubs, two_diams]
      hand = Hand.new(cards)
      expect(hand.three_of_a_kind?).to be true
    end
  end

  describe '#pairs' do
    it 'returns the unique pairs in the hand' do
      cards = [ace_spades, ace_diams, ace_hearts, two_clubs, two_diams]
      hand = Hand.new(cards)

      expect(hand.pairs).to eq([["A", "A"], ["2", "2"]])
    end
  end

  describe '#two_pair?' do
    it 'returns true if hand has two pairs' do
      cards = [ace_spades, ace_diams, ace_hearts, two_clubs, two_diams]
      hand = Hand.new(cards)
      expect(hand.two_pair?).to be true
    end
  end

  describe '#pair?' do
    it 'returns true if had has one pair' do
      cards = [ace_spades, ace_diams, four_clubs, three_clubs, two_diams]
      hand = Hand.new(cards)

      expect(hand.pair?).to be true
    end
  end

  describe '#flush?' do
    it 'returns true if hand is a flush' do
      cards = [two_clubs, three_clubs, four_clubs, jack_clubs, ace_clubs]
      hand = Hand.new(cards)

      expect(hand.flush?).to be true
    end
  end

  describe '#straight' do
    it 'returns true if hand is a straight' do
      
    end
  end

end
