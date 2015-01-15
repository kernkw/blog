def post_attributes(overrides = {})
  {
    title: "Post 1", 
    author: "Kyle Kern", 
    body: "My First blog post"
  }.merge(overrides)
end
