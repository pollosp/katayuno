require 'rspec'
require_relative '../poker_hands.rb'

describe 'KataPokerCards' do
  let(:game) { Game.new() }
  context 'High cards ' do
    context 'When Ace' do

      it 'wins faced with another figure' do
        hand_winner = game.hand_winner?('AH', 'KD')
        expect(hand_winner).to eq('AH')
      end

      it 'wins faced with a non-figure' do
        hand_winner = game.hand_winner?('3D','AH')
        expect(hand_winner).to eq('AH')
      end
    end
  end

  context 'Card order doesnt matters' do
    it 'wins in the second player' do
      hand_winner = game.hand_winner?('KD', 'AH')

      expect(hand_winner).to eq('AH')
    end

    it 'wins in the first player' do
      hand_winner = game.hand_winner?('AD', 'KH')

      expect(hand_winner).to eq('AD')
    end
  end
end
