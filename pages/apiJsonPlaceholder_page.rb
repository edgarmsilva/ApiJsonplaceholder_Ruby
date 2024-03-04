require "httparty"

module Api
  include HTTParty
  base_uri "https://jsonplaceholder.typicode.com"
  # debug_output $stdout
  def getUser(user)
    get("/users?username=#{user}", format: :json)
  end

  def getUserPosts(userId)
    userPosts = get("/posts?userId=#{userId}", format: :json)
    #   puts userPosts.size
  end

  def GetUserPostsCommentsEmails(allPosts)
    validate = Api::Validators.new
    allPosts.each do |eachPost|
      postsComments = get("/comments?postId=#{eachPost["id"]}", format: :json)
      postsComments.each do |eachComment|
        # puts eachComment["email"]
        status = validate.email(eachComment["email"])
        if status != true
          puts "The Email: #{eachComment["email"]} From comment ID No. #{eachComment["id"]} is not a valid Email..."
        end
      end
    end
  end

  class Validators
    def email(email)
      #   puts email
      email_regex = '^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$'
      if email.match?(email_regex)
        return true
      else
        return false
      end
    end
  end
end
