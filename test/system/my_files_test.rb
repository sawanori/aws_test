require "application_system_test_case"

class MyFilesTest < ApplicationSystemTestCase
  setup do
    @my_file = my_files(:one)
  end

  test "visiting the index" do
    visit my_files_url
    assert_selector "h1", text: "My Files"
  end

  test "creating a My file" do
    visit my_files_url
    click_on "New My File"

    fill_in "Comment", with: @my_file.comment
    fill_in "Filename", with: @my_file.filename
    fill_in "Title", with: @my_file.title
    click_on "Create My file"

    assert_text "My file was successfully created"
    click_on "Back"
  end

  test "updating a My file" do
    visit my_files_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @my_file.comment
    fill_in "Filename", with: @my_file.filename
    fill_in "Title", with: @my_file.title
    click_on "Update My file"

    assert_text "My file was successfully updated"
    click_on "Back"
  end

  test "destroying a My file" do
    visit my_files_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "My file was successfully destroyed"
  end
end
