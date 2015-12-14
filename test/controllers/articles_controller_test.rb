require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
  setup do
    @article = articles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:articles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create article" do
    assert_difference('Article.count') do
      post :create, article: { address: @article.address, area_id: @article.area_id, article_age: @article.article_age, articlestructure: @article.articlestructure, catv: @article.catv, floor_plans: @article.floor_plans, latitude: @article.latitude, longitude: @article.longitude, note: @article.note, optical_cable: @article.optical_cable, parking: @article.parking, refurbishment: @article.refurbishment, rent: @article.rent, sale: @article.sale, sewer_connection: @article.sewer_connection, zipcode: @article.zipcode }
    end

    assert_redirected_to article_path(assigns(:article))
  end

  test "should show article" do
    get :show, id: @article
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @article
    assert_response :success
  end

  test "should update article" do
    patch :update, id: @article, article: { address: @article.address, area_id: @article.area_id, article_age: @article.article_age, articlestructure: @article.articlestructure, catv: @article.catv, floor_plans: @article.floor_plans, latitude: @article.latitude, longitude: @article.longitude, note: @article.note, optical_cable: @article.optical_cable, parking: @article.parking, refurbishment: @article.refurbishment, rent: @article.rent, sale: @article.sale, sewer_connection: @article.sewer_connection, zipcode: @article.zipcode }
    assert_redirected_to article_path(assigns(:article))
  end

  test "should destroy article" do
    assert_difference('Article.count', -1) do
      delete :destroy, id: @article
    end

    assert_redirected_to articles_path
  end
end
