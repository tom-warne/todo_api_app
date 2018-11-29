require "rails_helper"

describe TagTask do
  it { should belong_to :tag  }
  it { should belong_to :task }
end
