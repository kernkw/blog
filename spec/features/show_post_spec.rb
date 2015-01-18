require 'rails_helper.rb'

describe "Shows a post" do
  it "displays the title of the post" do
    post = Post.create(title: "Post 1", 
                       author: "Kyle Kern", 
                       body: "My First blog post")

    visit post_url(post)

    expect(page).to have_text(post.title)
    expect(page).to have_text(post.author)
    expect(page).to have_text(post.body)
  end

end