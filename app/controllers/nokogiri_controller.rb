class NokogiriController < ApplicationController
  include Nokogiri
  def parse_mass_edmc
    doc = Nokogiri::HTML(open('http://www.massedmc.com/event-listing/'))
  end
end