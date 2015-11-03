class Game
  def hand_winner?(hand, other_hand)
    card_map = {
      'AH' => 2,
      'KD' => 1,
      '3D' => 0
    }
    return hand if card_map[hand] > card_map[other_hand]  else other_hand
  end
end
