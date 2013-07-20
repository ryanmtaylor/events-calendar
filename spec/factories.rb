# Read about factories at https://github.com/thoughtbot/factory_girl
#
# I've always found it easier to search/maintain a single factories.rb file
#

FactoryGirl.define do
  factory :event do
    sequence(:title) {|n| "Concert \##{n}"}
    cost 19.95
    description "This is a great concert!"
    venue
    start_time "2013-05-05 20:05:04"
    end_time "2013-05-05 20:05:04"
    date "2013-05-05"
    is_small false
    categories nil
    image_url "http://a.url/asdf.JPG"
    url "http://url.xx/ticket/123/?asdf=1"
    url_text ""
    is_published false
    age_limit "18+"
  end

  factory :event_category, :class => 'Event::Category' do
    sequence(:name) {|n| "Category \##{n}"}
  end

  factory :venue do
    sequence(:name) {|n| "Venue \##{n}"}
    sequence(:address) {|n| "#{n} Mass Ave, Boston, MA"}
  end

  factory :user do
    sequence(:name) {|n| "Test User \##{n}"}
    sequence(:email) {|n| "email#{n}@example.com"}
    password "password"
    password_confirmation { |user| user.password }
    
    confirmed_at Time.now #for Devise "confirmable" module
  end
end