require "test_helper"

class EntryTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @entry_type = entry_types(:one)
  end

  test "should get index" do
    get entry_types_url, as: :json
    assert_response :success
  end

  test "should create entry_type" do
    assert_difference("EntryType.count") do
      post entry_types_url, params: { entry_type: { name: @entry_type.name } }, as: :json
    end

    assert_response :created
  end

  test "should show entry_type" do
    get entry_type_url(@entry_type), as: :json
    assert_response :success
  end

  test "should update entry_type" do
    patch entry_type_url(@entry_type), params: { entry_type: { name: @entry_type.name } }, as: :json
    assert_response :success
  end

  test "should destroy entry_type" do
    assert_difference("EntryType.count", -1) do
      delete entry_type_url(@entry_type), as: :json
    end

    assert_response :no_content
  end
end
