require 'rails_helper.rb'

describe "Deletes a post" do
  it "destroys a post" do
    post = Post.create(post_attributes)

    visit post_path(post)

    click_link 'Delete'

    expect(current_path).to eq(posts_path)
    expect(page).not_to have_text(post.title)
  end
end