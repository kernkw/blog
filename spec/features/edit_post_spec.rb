require 'rails_helper.rb'

describe "Edit a post" do

  it 'should allow you to edit a posts information' do

    post = Post.create(post_attributes)
    
    visit post_url(post)
    
    click_link 'Edit'
    
    expect(current_path).to eq(edit_post_path(post))
        
    expect(find_field('Title').value).to eq(post.title)

    fill_in 'Title', with: "Updated Post Title"

    click_button 'Update Post'

    expect(current_path).to eq(post_path(post))

    expect(page).to have_text('Updated Post Title')
  end

end
