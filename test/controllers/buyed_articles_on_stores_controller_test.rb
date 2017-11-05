require 'test_helper'

class BuyedArticlesOnStoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @buyed_articles_on_store = buyed_articles_on_stores(:one)
  end

  test "should get index" do
    get buyed_articles_on_stores_url
    assert_response :success
  end

  test "should get new" do
    get new_buyed_articles_on_store_url
    assert_response :success
  end

  test "should create buyed_articles_on_store" do
    assert_difference('BuyedArticlesOnStore.count') do
      post buyed_articles_on_stores_url, params: { buyed_articles_on_store: { buying_id: @buyed_articles_on_store.buying_id, quantity: @buyed_articles_on_store.quantity, store_has_article_id: @buyed_articles_on_store.store_has_article_id } }
    end

    assert_redirected_to buyed_articles_on_store_url(BuyedArticlesOnStore.last)
  end

  test "should show buyed_articles_on_store" do
    get buyed_articles_on_store_url(@buyed_articles_on_store)
    assert_response :success
  end

  test "should get edit" do
    get edit_buyed_articles_on_store_url(@buyed_articles_on_store)
    assert_response :success
  end

  test "should update buyed_articles_on_store" do
    patch buyed_articles_on_store_url(@buyed_articles_on_store), params: { buyed_articles_on_store: { buying_id: @buyed_articles_on_store.buying_id, quantity: @buyed_articles_on_store.quantity, store_has_article_id: @buyed_articles_on_store.store_has_article_id } }
    assert_redirected_to buyed_articles_on_store_url(@buyed_articles_on_store)
  end

  test "should destroy buyed_articles_on_store" do
    assert_difference('BuyedArticlesOnStore.count', -1) do
      delete buyed_articles_on_store_url(@buyed_articles_on_store)
    end

    assert_redirected_to buyed_articles_on_stores_url
  end
end
