require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  
  def setup
    @base_title = "Projeto Cuidar - Terapia Ocupacional"
  end
  
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get institucional" do
    get :institucional
    assert_response :success
    assert_select "title", "Institucional | #{@base_title}"
  end

  test "should get newsletter" do
    get :newsletter
    assert_response :success
    assert_select "title", "Newsletter | #{@base_title}"
  end

  test "should get contato" do
    get :contato
    assert_response :success
    assert_select "title", "Contato | #{@base_title}"
  end
  
  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "Sobre Nós | #{@base_title}"
  end

end
