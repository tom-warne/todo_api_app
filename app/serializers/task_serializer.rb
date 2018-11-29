class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title # Column Attributes
  attributes :destroyed  # Custom Attributes

  has_many   :tags

  def destroyed
    object.destroyed?
  end

  class TagSerializer < ActiveModel::Serializer
    attributes :id, :title
  end
end
