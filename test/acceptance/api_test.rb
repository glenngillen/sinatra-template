require_relative '../test_helper'
describe "API" do
  include SinatraTemplate::AcceptanceTestMethods
  describe "GET /healthcheck" do
    it "returns a 200" do
      get '/healthcheck'
      assert_equal 200, last_response.status
    end
  end
end
