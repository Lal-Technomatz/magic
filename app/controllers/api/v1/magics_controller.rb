class Api::V1::MagicsController < ApplicationController

  # def show
  #   @result =  fetch_action.find(params[:id])
  # end

  def cards_group_by_set
    debugger
    cards_set = fetch_action['cards'].map { |element| element['set'] }.uniq
    cards_list_set = fetch_action['cards'].map { |element| element if element['set'] == cards_set[0] }
    render json: cards_list_set
  end

  def cards_group_by_set_group_by_rarity
    cards_set = fetch_action['cards'].map { |element| element['set'] }.uniq
    cards_rarity = fetch_action['cards'].map { |element| element['rarity'] }.uniq
    cards_list_set = fetch_action['cards'].map { |element| element if element['set'] == cards_set[0] }
    cards_set_rarity = cards_list_set.map{ |element| element if element['rarity'] == cards_rarity[0] }
    debugger
    cards_group_by_set_group_by_rarity = cards_list_set.map{ |element| element if element[:cards_list_set] ==  cards_set_rarity[0] }
    render json: cards_group_by_set_group_by_rarity
  end

  def cards_from_KTK
    response_raw = RestClient.get"https://api.magicthegathering.io/v1/sets"
    response_json = JSON.parse(response_raw)
    sets = response_json["sets"].select { |element| element if element['name'] == "Khans of Tarkir"}
    # cards_from_KTK = sets.map { |element| element if element['c'] }
    render json: sets
  end

  private

  def fetch_action
    response_raw = RestClient.get"https://api.magicthegathering.io/v1/cards"
    response_json = JSON.parse(response_raw)
    # cards = response_json.group(:sett)
    # render json: cards
  end

end
