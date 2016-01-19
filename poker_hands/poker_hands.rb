class Game
  CARD_MAP = {
    'A' => 2,
    'A' => 2,
    'K' => 1,
    'K' => 1,
    '3' => 0
  }

  def hand_winner?(hand, other_hand)
    rank = rank(hand)
    other_rank = rank(other_hand)
    if value(rank) > value(other_rank)
      hand
    else
      other_hand
    end
  end

  private

  def rank(hand)
    hand[0]
  end

  def value(rank)
    CARD_MAP[rank]
  end
end
