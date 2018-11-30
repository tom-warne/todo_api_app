require "rails_helper"

describe Tag do
  it { should have_many(:tag_tasks).dependent(:destroy) }
  it { should have_many(:tasks).through(:tag_tasks) }

  it { should validate_presence_of(:title) }
end
