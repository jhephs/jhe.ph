class PostSerializer < ActiveModel::Serializer
  attributes :title, :body, :slug, :posted_at

  belongs_to :user
end
