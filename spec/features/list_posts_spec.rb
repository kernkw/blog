require 'rails_helper.rb'

describe "Lists all the posts" do
  it "displays the title" do 
    visit posts_url

    expect(page).to have_text("TheCuriousRubyProgrammer")
  end
  it "displays the posts" do
    post1 = Post.create(post_attributes)

    post2 = Post.create(post_attributes(title: "Post 2"))

    visit posts_url

    expect(page).to have_text(post1.title)
    expect(page).to have_text(post1.author)
    expect(page).to have_text(post1.body)

    expect(page).to have_text(post2.title)
    expect(page).to have_text(post2.author)
    expect(page).to have_text(post2.body)
  end
end