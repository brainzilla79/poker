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
  let(:two_diams) { double("ace_diams", :value => "2", :suit => :diamonds, :number_value => 2)}

  describe '#face_values' do
    it 'returns the face values of the cards in hand' do
      card_values = ["A", "A", "A", "A", "2"]
      cards = [ace_spades, ace_diams, ace_hearts, ace_clubs, two_diams]
      hand = Hand.new(cards)

      expect(hand.face_values).to eq(card_values)
    end
  end

  describe '#num_values' do
    it 'returns the number values of the cards in hand' do
      num_values = [14, 14, 14, 14, 2]
      cards = [ace_spades, ace_diams, ace_hearts, ace_clubs, two_diams]
      hand = Hand.new(cards)

      expect(hand.num_values).to eq(num_values)
    end
  end

end
