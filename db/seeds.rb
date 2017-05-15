
100.times do |n|
  name = "test"
  email = Faker::Internet.email
  password = "password"
  provider = Faker::Internet.email
  User.create!(email: email,
               name: name,
               password: password,
               password_confirmation: password,
               uid: n,
               provider: provider
               )
      user.skip_confirmation!
      t=User.last.id
   Blog.create(
               title: "iii",
               content: "hoge",
               user_id: t
               )
end
