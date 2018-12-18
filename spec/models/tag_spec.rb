require "rails_helper"

describe Tag do
  it { should have_many(:tag_tasks).dependent(:destroy) }
  it { should have_many(:tasks).through(:tag_tasks) }

  it { should validate_presence_of(:title) }



  context 'faulty php entries' do
    it 'inserts 2 TagTasks with match params' do
      expect { 2.times { TagTask.new(tag_id: 4, task_id: 4).save(validate: false) } }.to(
        raise_error(ActiveRecord::RecordNotUnique)
      )
    end
  end

end
