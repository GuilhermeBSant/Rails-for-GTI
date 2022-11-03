require "test_helper"

class BibliotecariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bibliotecario = bibliotecarios(:one)
  end

  test "should get index" do
    get bibliotecarios_url
    assert_response :success
  end

  test "should get new" do
    get new_bibliotecario_url
    assert_response :success
  end

  test "should create bibliotecario" do
    assert_difference("Bibliotecario.count") do
      post bibliotecarios_url, params: { bibliotecario: { nome: @bibliotecario.nome } }
    end

    assert_redirected_to bibliotecario_url(Bibliotecario.last)
  end

  test "should show bibliotecario" do
    get bibliotecario_url(@bibliotecario)
    assert_response :success
  end

  test "should get edit" do
    get edit_bibliotecario_url(@bibliotecario)
    assert_response :success
  end

  test "should update bibliotecario" do
    patch bibliotecario_url(@bibliotecario), params: { bibliotecario: { nome: @bibliotecario.nome } }
    assert_redirected_to bibliotecario_url(@bibliotecario)
  end

  test "should destroy bibliotecario" do
    assert_difference("Bibliotecario.count", -1) do
      delete bibliotecario_url(@bibliotecario)
    end

    assert_redirected_to bibliotecarios_url
  end
end
