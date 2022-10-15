class Mutations::DeleteUser < GraphQL::Schema::Mutation
  null true

  argument :id, ID, required: true

  def resolve(id:)
    # User.where(id: id).destroy_all
    # true
    User.find(id).delete
  end
end
