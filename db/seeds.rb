# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# MEMBERS
20.times do |idx|
  Member.create(
    name: "#{idx}name",
    introduction: Faker::ChuckNorris.fact,
    age: 10+idx,
    hometown:Faker::Address.state,
    birthday: (20+idx).years.ago,
    catchphrase: "aal izz well",
    motto:"継続は力なり",
    bestdish:Faker::Food.dish,
    email: "#{idx}__#{idx}@railssample.com",
    password: "password",
    password_confirmation: "password"
    )
end



#QUESTIONS
bodies = [
    "お友達に半身浴を薦められ、やってみましたがうまく行きません。鼻や耳にお湯が入ってしまいます。右半身ですか？左半身ですか？困っています。",
    "バカは風邪ひかないって本当なんですか？"
]
answers = [
    "下半身です。左右ではありません。みぞおちの下辺りまでお湯につかれればＯＫです。",
    "馬鹿は風邪ひかないというより風邪をひいたことに気づかないです。"
]

2.times do |idx|
  Question.create(
    body: bodies[idx],
    answer: answers[idx]
    )
end


# POSTS
genres= ["郷土料理", "中華", "家庭料理", "簡単レシピ", "パーティ料理"]
5.times do |idx|
  Post.create(
          title:Faker::Lorem.sentence(3, true),
          body:Faker::BackToTheFuture.quote,
          genre: genres[idx])
end

