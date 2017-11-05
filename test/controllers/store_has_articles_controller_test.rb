require 'test_helper'

class StoreHasArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @store_has_article = store_has_articles(:one)
  end

  test "should get index" do
    get store_has_articles_url
    assert_response :success
  end

  test "should get new" do
    get new_store_has_article_url
    assert_response :success
  end

  test "should create store_has_article" do
    assert_difference('StoreHasArticle.count') do
      post store_has_articles_url, params: { store_has_article: { article_id: @store_has_article.article_id, store_id: @store_has_article.store_id, url: @store_has_article.url } }
    end

    assert_redirected_to store_has_article_url(StoreHasArticle.last)
  end

  test "should show store_has_article" do
    get store_has_article_url(@store_has_article)
    assert_response :success
  end

  test "should get edit" do
    get edit_store_has_article_url(@store_has_article)
    assert_response :success
  end

  test "should update store_has_article" do
    patch store_has_article_url(@store_has_article), params: { store_has_article: { article_id: @store_has_article.article_id, store_id: @store_has_article.store_id, url: @store_has_article.url } }
    assert_redirected_to store_has_article_url(@store_has_article)
  end

  test "should destroy store_has_article" do
    assert_difference('StoreHasArticle.count', -1) do
      delete store_has_article_url(@store_has_article)
    end

    assert_redirected_to store_has_articles_url
  end
end
