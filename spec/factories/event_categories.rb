# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event_category, :class => 'Event::Category' do
    name "MyString"
  end
end
