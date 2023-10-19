require "test_helper"

class CsvImportControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get csv_import_new_url
    assert_response :success
  end

  test "should get create" do
    get csv_import_create_url
    assert_response :success
  end
end
