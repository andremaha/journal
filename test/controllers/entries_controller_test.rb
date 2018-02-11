require 'test_helper'

class EntriesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "| Self Learning Experiment"
  end

  test "should get entries page" do
    get entries_path
    assert_response :success
  end

  test "should have Journal in heading" do
    get entries_path
    assert_select "h1", "Journal"
  end

  test "should have Journal in title" do
    get entries_path
    assert_select "title", "Journal #{@base_title}"
  end
end
