require 'test_helper'

class BackupsControllerTest < ActionController::TestCase

  test "should get index" do
    Backup.destroy_all

    get :index

    assert_response :success
  end

  test "should get new" do
    get :new

    assert_not_nil assigns(:backup), "Expected @backup"
    assert_response :success
  end

  test "should get show" do
    backup = backups(:default)

    get :show, id: backup

    assert_response :success
  end

end
