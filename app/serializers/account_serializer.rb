class AccountSerializer < ActiveModel::Serializer
  attributes :email, :username

  belongs_to :user
end
