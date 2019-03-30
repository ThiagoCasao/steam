require 'test_helper'

class ClassificacaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @classificacao = classificacaos(:one)
  end

  test "should get index" do
    get classificacaos_url
    assert_response :success
  end

  test "should get new" do
    get new_classificacao_url
    assert_response :success
  end

  test "should create classificacao" do
    assert_difference('Classificacao.count') do
      post classificacaos_url, params: { classificacao: { nome: @classificacao.nome } }
    end

    assert_redirected_to classificacao_url(Classificacao.last)
  end

  test "should show classificacao" do
    get classificacao_url(@classificacao)
    assert_response :success
  end

  test "should get edit" do
    get edit_classificacao_url(@classificacao)
    assert_response :success
  end

  test "should update classificacao" do
    patch classificacao_url(@classificacao), params: { classificacao: { nome: @classificacao.nome } }
    assert_redirected_to classificacao_url(@classificacao)
  end

  test "should destroy classificacao" do
    assert_difference('Classificacao.count', -1) do
      delete classificacao_url(@classificacao)
    end

    assert_redirected_to classificacaos_url
  end
end
