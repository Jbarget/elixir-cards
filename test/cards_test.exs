defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create_deck makes a deck of 20 cards" do
    deck_length = length(Cards.create_deck)
    assert deck_length == 40
  end

  test "shuffling a deck randomizes it" do
    deck = Cards.create_deck
    refute deck == Cards.shuffle(deck)
  end

  test "create_hand starts a game of cards" do
    {hand, deck} = Cards.create_hand(2)
    assert length(hand) == 2
    assert length(deck) == 38
  end
end
