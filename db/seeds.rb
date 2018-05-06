require 'random_data'

# Create Posts
15.times do
  Topic.create!(
    name:         RandomData.random_sentence,
    description:  RandomData.random_paragraph
  )
end
topics = Topic.all

5.times do
  SponsoredPost.create!(
    topic: topics.sample,
    title: "This is a sponsored post!",
    body: RandomData.random_paragraph
  )
  end
  sponsored_posts = SponsoredPost.all

50.times do
  Post.create!(
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
puts "#{Topic.count} topics created"
puts "#{SponsoredPost.count} sponsored posts created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
puts "#{Question.count} questions created"