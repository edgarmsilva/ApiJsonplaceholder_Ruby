require_relative "../pages/apiJsonPlaceholder_page"
include Api

Given("that I search for the username {string}") do |user|
  @response = Api::getUser(user)
  # @response = @api.getUser(user)
  expect(user).to eql @response[0]["username"]
  @userNameId = @response[0]["id"]
end

When("I use the id fetched to search for the posts written by the user") do
  @allPosts = Api::getUserPosts(@userNameId)
  # validate if all posts bellongs to the user
  @allPosts.each do |eachPost|
    expect(eachPost["userId"]).to eql @userNameId
  end
end

Then("I validate if the emails in the comment section are in the proper format") do
  Api::GetUserPostsCommentsEmails(@allPosts)
end

When("I search for a inexistent username {string}") do |user|
  @response = Api::getUser(user)
end

Then("I receive an empty body response") do
  expect(@response.size).to eql 0
end

When("I use an inexistent user id to search for the posts") do
  @response = Api::getUser(99999)
end

When("I use an inexistent post id to search for the posts comments") do
  @response = Api::getUserPosts(99999)
end
