describe "status code" do
    
    it "status code 200" do
        result = HTTParty.get("http://api.postmon.com.br/v1/cep/05351030")
        puts "responde body: #{result.body}"
        expect(result.response.code).to eql "200"
    end

    it "response body" do
        result = HTTParty.get("http://api.postmon.com.br/v1/cep/05351030")
        puts "responde body: #{result.body}"
        expect(result.response.body).to eql result.body

    end

end