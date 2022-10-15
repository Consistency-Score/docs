class Types::InsightType < Types::BaseObject
  # graphql_name "UserOutputType"
  description "Gets an Insight instance"

  field :id, ID, null: false
  field :title, String, null: false
  field :body, String, null: false
  field :created_at, GraphQL::Types::ISO8601DateTime, null: false
  field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
end
