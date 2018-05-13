require 'random_data'
# Create Users
user = User.first
 user.update_attributes!(
   email: 'ardelapaz@yahoo.com', # replace this with your personal email
   password: 'password'
 )
5.times do
  User.create!(
# #3
  name:     RandomData.random_name,
  email:    RandomData.random_email,
  password: RandomData.random_sentence
  )
end
users = User.all

# Create Posts
15.times do
  Topic.create!(
    name:         RandomData.random_sentence,
    description:  RandomData.random_paragraph
  )
end
topics = Topic.all

15.times do
  SponsoredPost.create!(
    topic: topics.sample,
    title: "This is a sponsored post!",
    body: RandomData.random_paragraph,
    price: 10
  )
  end
  sponsored_posts = SponsoredPost.all

50.times do
  Post.create!(
    user:   users.sample,
    topic:  topics.sample,
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph
  )
end
posts = Post.all

# Create Comments
100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

# Create Questions
100.times do
  Question.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
  end
  questions = Question.all

Post.find_or_create_by(title: "title", body: "body")
Comment.find_or_create_by(post:Post.find_or_create_by(title: "title", body: "body"), body: "commentBody")

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Topic.count} topics created"
puts "#{SponsoredPost.count} sponsored posts created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
puts "#{Question.count} questions created"