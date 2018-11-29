FactoryBot.define do
  factory :task do
    sequence(:title) { |n| 'Task %03i' % n }
  end
end
