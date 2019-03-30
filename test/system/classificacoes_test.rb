require "application_system_test_case"

class ClassificacoesTest < ApplicationSystemTestCase
  setup do
    @classificacao = classificacoes(:one)
  end

  test "visiting the index" do
    visit classificacoes_url
    assert_selector "h1", text: "Classificacoes"
  end

  test "creating a Classificacao" do
    visit classificacoes_url
    click_on "New Classificacao"

    fill_in "Idade minima", with: @classificacao.idade_minima
    fill_in "Nome", with: @classificacao.nome
    click_on "Create Classificacao"

    assert_text "Classificacao was successfully created"
    click_on "Back"
  end

  test "updating a Classificacao" do
    visit classificacoes_url
    click_on "Edit", match: :first

    fill_in "Idade minima", with: @classificacao.idade_minima
    fill_in "Nome", with: @classificacao.nome
    click_on "Update Classificacao"

    assert_text "Classificacao was successfully updated"
    click_on "Back"
  end

  test "destroying a Classificacao" do
    visit classificacoes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Classificacao was successfully destroyed"
  end
end
