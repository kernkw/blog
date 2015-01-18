require 'rails_helper.rb'

describe "Create a new post" do

  it "Should have a link to create new post" do
    visit posts_url

    click_link 'Add new post'

    expect(current_path).to eq(new_post_path)

    fill_in "Title", with: "New Post Title"
    fill_in "Body", with: "Superheroes saving the world from villains"
    fill_in "Author", with: "Kyle Kern"

    click_button 'Create Post'

    expect(current_path).to eq(post_path(Post.last))   
    
    expect(page).to have_text('New Post Title')

  end
end
