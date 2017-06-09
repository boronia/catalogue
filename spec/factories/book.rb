FactoryGirl.define do
  factory :book do
    title     'My Book'
    author    'John Doe'
    is_series false
    owner     'Sara'
    category  'Fiction'
    latest_volume nil
    current_volume nil
  end

end