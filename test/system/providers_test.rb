require "application_system_test_case"

class ProvidersTest < ApplicationSystemTestCase
  setup do
    @provider = providers(:one)
  end

  test "visiting the index" do
    visit providers_url
    assert_selector "h1", text: "Providers"
  end

  test "creating a Provider" do
    visit providers_url
    click_on "New Provider"

    fill_in "Cep", with: @provider.cep
    fill_in "Cpf Cnpj", with: @provider.cpf_cnpj
    fill_in "End Cid", with: @provider.end_cid
    fill_in "End Compl", with: @provider.end_compl
    fill_in "End Logr", with: @provider.end_logr
    fill_in "End Num", with: @provider.end_num
    fill_in "End Ug", with: @provider.end_ug
    fill_in "Name", with: @provider.name
    fill_in "Tel Cel", with: @provider.tel_cel
    fill_in "Tel Fixo", with: @provider.tel_fixo
    fill_in "Tipo Pessoa", with: @provider.tipo_pessoa
    click_on "Create Provider"

    assert_text "Provider was successfully created"
    click_on "Back"
  end

  test "updating a Provider" do
    visit providers_url
    click_on "Edit", match: :first

    fill_in "Cep", with: @provider.cep
    fill_in "Cpf Cnpj", with: @provider.cpf_cnpj
    fill_in "End Cid", with: @provider.end_cid
    fill_in "End Compl", with: @provider.end_compl
    fill_in "End Logr", with: @provider.end_logr
    fill_in "End Num", with: @provider.end_num
    fill_in "End Ug", with: @provider.end_ug
    fill_in "Name", with: @provider.name
    fill_in "Tel Cel", with: @provider.tel_cel
    fill_in "Tel Fixo", with: @provider.tel_fixo
    fill_in "Tipo Pessoa", with: @provider.tipo_pessoa
    click_on "Update Provider"

    assert_text "Provider was successfully updated"
    click_on "Back"
  end

  test "destroying a Provider" do
    visit providers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Provider was successfully destroyed"
  end
end
