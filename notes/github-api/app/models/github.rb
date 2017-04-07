module Github

  class Client
    include HTTParty

    base_uri "https://api.github.com"

    def initialize(token = nil)
      @token = token
      @headers = {
        "User-Agent" => 'Make it Real'
        # "Authorization" => "token a8df8ddf0c3af711f60a5615a1d0651ca68a4ffc"
      }
    end

    def posts
      response = self.class.get('/some/endpoint', {
        query: { with: 'paramaters' }
        })
      return response.body
    end

    def create_gist(post)
      post = {
        description: post["description"],
        public: true,
        files: {
          "file1.txt" => {
            content: post["content"]
          }
        }
      }

      gist = self.class.post('/gists', {
        headers: @headers,
        body: post.to_json
      })
      gist.parsed_response
    end

  end

end
