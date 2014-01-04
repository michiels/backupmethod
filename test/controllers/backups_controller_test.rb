require 'test_helper'

class BackupsControllerTest < ActionController::TestCase
  test "should get index" do
    Backup.destroy_all

    get :index

    assert_response :success
  end
end
