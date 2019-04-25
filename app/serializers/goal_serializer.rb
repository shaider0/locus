class GoalSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :editable

  def editable
    scope == object.user
  end
end
