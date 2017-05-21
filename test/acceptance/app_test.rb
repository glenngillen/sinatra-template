require_relative '../test_helper'

describe 'App' do
  include SinatraTemplate::AcceptanceTestMethods

  describe 'GET /' do
    it 'renders successfully' do
      get '/'
      assert_equal 200, last_response.status
    end
  end
end
