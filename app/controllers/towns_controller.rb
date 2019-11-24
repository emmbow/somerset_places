require 'json'
require 'open-uri'

class TownsController < ApplicationController
  # before_action :set_town, only: [show, scraping]
  def index
    @towns = Town.geocoded
    @town = @towns.sample
  end

  def show
    @town = Town.find(params[:id])
    @markers = {
      lat: @town.latitude,
      lng: @town.longitude
    }
    url = "https://en.wikipedia.org/w/api.php?action=opensearch&search=#{@town.name}&limit=1&format=json"
    town_serialized = open(url).read
    @town_detail = JSON.parse(town_serialized)
  end

  # private

  # def set_town
  #   @town = Town.find(params[:id])
  # end

  # def scraping
  #   url = "https://en.wikipedia.org/w/api.php?action=opensearch&search=#{@town}&limit=1&format=json"
  #   town_serialized = open(url).read
  #   @town_detail = JSON.parse(town_serialized)
  # end
end
