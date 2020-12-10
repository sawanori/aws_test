require 'test_helper'

class MyFilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_file = my_files(:one)
  end

  test "should get index" do
    get my_files_url
    assert_response :success
  end

  test "should get new" do
    get new_my_file_url
    assert_response :success
  end

  test "should create my_file" do
    assert_difference('MyFile.count') do
      post my_files_url, params: { my_file: { comment: @my_file.comment, filename: @my_file.filename, title: @my_file.title } }
    end

    assert_redirected_to my_file_url(MyFile.last)
  end

  test "should show my_file" do
    get my_file_url(@my_file)
    assert_response :success
  end

  test "should get edit" do
    get edit_my_file_url(@my_file)
    assert_response :success
  end

  test "should update my_file" do
    patch my_file_url(@my_file), params: { my_file: { comment: @my_file.comment, filename: @my_file.filename, title: @my_file.title } }
    assert_redirected_to my_file_url(@my_file)
  end

  test "should destroy my_file" do
    assert_difference('MyFile.count', -1) do
      delete my_file_url(@my_file)
    end

    assert_redirected_to my_files_url
  end
end
