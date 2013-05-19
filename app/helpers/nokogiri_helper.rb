require 'nokogiri'
require 'rubygems'
require 'open-uri'
module NokogiriHelper
  def wantickets
    array = []
    url = "http://wantickets.com/events/default.aspx?zoneId=3307914&pgNum="
#    record = '.EventRecord.DataRecord'
#    artist = '.MainEventInfo > .EventInfo > a > span'
#    '.MainEventInfo > .EventInfo > a > span'
#    '.VenueInfo'
#    '.VenueInfo > a > span'
#    '.DateInfo > .Date > time'
    page = Nokogiri::HTML(open(url + "#{1}"))
    page.css('.EventRecord.DataRecord').each do |event|
      array << {
        :artist => event.css('.MainEventInfo > .EventInfo > a > span').text.strip,
        :event_url => event.css('.MainEventInfo > .EventInfo > a > span')[0]['href'],
        :venue => event.css('.VenueInfo > a > span')[0].text.strip,
        :venue_wantickets_id => event.css('.VenueInfo > a')[0]['href'].scan(/\/Venues\/(\d+)/).flatten[0],
        :date => Date.strptime(event.css('.DateInfo > .Date > time').children[2].text, '%m/%d/%Y')
      }
    end
  end
end
