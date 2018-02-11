require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "| Self Learning Experiment"
  end

  test "should get index" do
    get root_path
    assert_response :success
  end

  test "should get Home in title" do
    get root_path
    assert_select "title", "Home #{@base_title}"
  end

end
