class Api::V1::MagicsController < ApplicationController

  def cards_group_by_set
    cards_group_by_set = fetch_action['cards'].group_by { |card| card['set'] }.map do |key,value|
                            Hash[ key=>{sets: value } ]
                          end
    render json: cards_group_by_set
  end

  def cards_group_by_set_group_by_rarity
    cards_group_by_set_group_by_rarity = fetch_action['cards'].group_by { |card| card['set'] }.map do |key,value|
                                            Hash[key=>{ rarity: value}]
                                          end
    render json: cards_group_by_set_group_by_rarity
  end

  def cards_from_KTK
    cards_from_KTK = fetch_action['cards'].select { |c| (c['set'] == 'Khans of Tarkir (KTK)') && (c['colors'] & ['Red', 'Blue'] == c['colors']) }
    render json: cards_from_KTK
  end

  private

  def fetch_action
    response_raw = RestClient.get"https://api.magicthegathering.io/v1/cards"
    response_json = JSON.parse(response_raw)
  end

end
