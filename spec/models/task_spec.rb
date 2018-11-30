require "rails_helper"

describe Task do
  it { should have_many(:tag_tasks).dependent(:destroy) }
  it { should have_many(:tags).through(:tag_tasks) }

  it { should validate_presence_of(:title) }
end
