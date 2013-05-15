# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    title "MyString"
    cost 1.5
    description "MyText"
    venue nil
    start_time "2013-05-05 20:05:04"
    end_time "2013-05-05 20:05:04"
    date "2013-05-05"
    is_small false
    categories nil
    image_url "MyString"
    url "MyString"
    url_text "MyString"
    is_published false
    age_limit "MyString"
  end
end
