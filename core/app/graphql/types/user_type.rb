class Types::UserType < Types::BaseObject
  # graphql_name "UserOutputType"
  description "Gets a user instance"

  field :id, ID, null: false
  field :username, String, null: false
  field :email, String, null: false
  field :password_digest, String, null: false
  field :first_name, String, null: true
  field :last_name, String, null: true
  field :headline, String, null: true
  field :bio, String, null: true
  field :created_at, GraphQL::Types::ISO8601DateTime, null: false
  field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

  field :full_name, String, null: true
  def full_name
    "#{object.first_name} #{object.last_name}"
  end

  field :errors, [Types::ErrorType], null: true
  def errors
    object.errors.map do |e|
      { field_name: e.attribute, errors: object.errors[e.attribute] }
    end
  end
end
