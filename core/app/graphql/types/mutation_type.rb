module Types
  class MutationType < Types::BaseObject
    field :create_user, Types::UserType, mutation: Mutations::CreateUser # mentioning that the mutation instead lives elsewhere
    field :delete_user, Types::UserType, mutation: Mutations::DeleteUser
  end
end
