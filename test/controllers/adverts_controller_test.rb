require "test_helper"

class AdvertsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @advert = adverts(:one)
  end

  test "should get index" do
    get adverts_url, as: :json
    assert_response :success
  end

  test "should create advert" do
    assert_difference("Advert.count") do
      post adverts_url, params: { advert: { category: @advert.category, description: @advert.description, price: @advert.price, title: @advert.title } }, as: :json
    end

    assert_response :created
  end

  test "should show advert" do
    get advert_url(@advert), as: :json
    assert_response :success
  end

  test "should update advert" do
    patch advert_url(@advert), params: { advert: { category: @advert.category, description: @advert.description, price: @advert.price, title: @advert.title } }, as: :json
    assert_response :success
  end

  test "should destroy advert" do
    assert_difference("Advert.count", -1) do
      delete advert_url(@advert), as: :json
    end

    assert_response :no_content
  end
end
