class GoalSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :owned

  def owned
    scope == object.user
  end
end
