class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_many   :tags

  class TagSerializer < ActiveModel::Serializer
    attributes :id, :title
  end
end
