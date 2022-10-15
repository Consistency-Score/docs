# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # sample field with no args
    field :test_field,
          String, # returns a string
          null: false, # not allowed to be null (but when & where??)
          description: "Edited desc of the test field!!"
    def test_field
      "Hello from test_field"
    end

    # sample field with args
    field :test_field_args,
          String,
          null: true,
          description: "desc of testFieldArgs" do
      argument :name, String, required: false
    end
    def test_field_args(name:)
      Rails.logger.info context[:var1]
      "Hello #{name} from test_field_args!"
    end

    # user field
    field :user,
          Types::UserType,
          null: true,
          description: "Returns a user instance" do
      argument :id, ID, required: true
    end
    def user(id:)
      User.where(id: id).first
    end

    # users field
    field :users,
          [Types::UserType],
          null: false,
          description: "Returns an array of users"
    def users
      User.all
    end

    # insight field
    field :insight,
          Types::InsightType,
          null: true,
          description: "Returns an insight instance" do
      argument :id, ID, required: true
    end
    def insight(id:)
      Insight.where(id: id).first
    end

    # insights field
    field :insights,
          [Types::InsightType],
          null: false,
          description: "Returns an array of insights"
    def insights
      Insight.all
    end

    field :login, String, null: true, description: "Logs a user in" do
      argument :email, String, required: true
      argument :password, String, required: true
    end

    def login(email:, password:)
      if user = User.where(email: email).first&.authenticate(password)
        user.sessions.create.key
      end
    end
  end
end
