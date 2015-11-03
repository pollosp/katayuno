require './spec_helper'
require_relative '../poker_hands.rb'
describe 'KataPokerCards' do
  context 'High cards ' do
    it 'higher wins lower card' do
      game= Game.new()

      hand = Hand.new(['AH'])
      other_hand = Hand.new(['KD'])
      hand_winner = game.hand_winner?('AH', 'KD')

      expect(hand_winner).to eq('AH')

      hand_winner = game.hand_winner?('KD', 'AH')

      expect(hand_winner).to eq('AH')

      hand_winner = game.hand_winner?('3D','AH')
      expect(hand_winner).to eq('AH')
    end
  end
end
