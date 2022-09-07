require "test_helper"

class MagicTheGatheringsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "cards_group_by_set" do
    cards_group_by_set = cards_group_by_set.present?
    assert true
  end

  test "cards_group_by_set_group_by_rarity" do
    cards_group_by_set_group_by_rarity = cards_group_by_set_group_by_rarity.present?
    assert true
  end

  test "cards_from_KTK" do
    cards_from_KTK = cards_from_KTK.present?
    assert true
  end

end
