module ApplicationHelper

def form_group_tag(errors, &block)
    css_class = 'form group'
    css_class << ' has error' if errors.any?

    content_tag :div, capture(&block), class: css_class
end

def avatar_url(user)
    gravatar_id = Digest::MD5::hexdigest(user.email).downcase
    "http://gravatar.com/avatar/#{gravatar_id}.png?s=48"
end

# def user_has_post
#     if (user.post)
#         user.post.each |post| do
#             user.post
#         end
#     else "User does not have any posts."
# end

# def user_has_comment
#     if (user.comment)
#         user.comment.each |comment| do
#             user.comment
#         end
#     else "User does not have any comments."
# end

def user_has_content(user)
    return (user.posts.count > 0 || user.comments.count > 0)
end

def user_has_favorites(user)
    return (user.favorites.count > 0)
end

end
