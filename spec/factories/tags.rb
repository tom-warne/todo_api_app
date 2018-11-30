FactoryBot.define do
  factory :tag do
    sequence(:title) { |n| 'Tag %03i' % n }
  end
end
