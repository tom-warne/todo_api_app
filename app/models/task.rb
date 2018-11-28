class Task < ApplicationRecord
  has_many :tag_tasks, dependent: :destroy
  has_many :tags,      through:   :tag_tasks

  validates :title, presence: true
end
