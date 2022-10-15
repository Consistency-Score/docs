class Mutations::CreateUser < GraphQL::Schema::Mutation
  null true

  argument :username, String, required: true
  argument :email, String, required: true
  argument :password_digest, String, required: true
  argument :first_name, String, required: false, default_value: nil
  argument :last_name, String, required: false, default_value: nil
  argument :headline, String, required: false, default_value: nil
  argument :bio, String, required: false, default_value: nil

  # # this mutation is its own class, so we don't call its resolver `create_user`
  def resolve(
    username:,
    email:,
    password_digest:,
    first_name:,
    last_name:,
    headline:,
    bio:
  )
    User.create username: username,
                email: email,
                password_digest: password_digest,
                first_name: first_name,
                last_name: last_name,
                headline: headline,
                bio: bio
  end
end
