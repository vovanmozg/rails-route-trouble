require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "returns current page" do
    get page2_url, params: {lang: 'en', country: 'au'}

    json_response = JSON.parse(response.body)
    assert_equal "http://www.example.com/subdomain/page2?lang=de&country=de", json_response["url_for"]
  end
end
