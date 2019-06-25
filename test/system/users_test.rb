require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Users"
  end

  test "creating a User" do
    visit users_url
    click_on "New User"

    fill_in "Admin", with: @user.admin
    fill_in "Cep", with: @user.cep
    fill_in "Cpf", with: @user.cpf
    fill_in "Dt Nasc", with: @user.dt_nasc
    fill_in "End Cid", with: @user.end_cid
    fill_in "End Compl", with: @user.end_compl
    fill_in "End Logr", with: @user.end_logr
    fill_in "End Num", with: @user.end_num
    fill_in "End Ug", with: @user.end_ug
    fill_in "Nome", with: @user.nome
    fill_in "Rg", with: @user.rg
    fill_in "Rg Emissor", with: @user.rg_emissor
    fill_in "Tel Cel", with: @user.tel_cel
    fill_in "Tel Fixo", with: @user.tel_fixo
    click_on "Create User"

    assert_text "User was successfully created"
    click_on "Back"
  end

  test "updating a User" do
    visit users_url
    click_on "Edit", match: :first

    fill_in "Admin", with: @user.admin
    fill_in "Cep", with: @user.cep
    fill_in "Cpf", with: @user.cpf
    fill_in "Dt Nasc", with: @user.dt_nasc
    fill_in "End Cid", with: @user.end_cid
    fill_in "End Compl", with: @user.end_compl
    fill_in "End Logr", with: @user.end_logr
    fill_in "End Num", with: @user.end_num
    fill_in "End Ug", with: @user.end_ug
    fill_in "Nome", with: @user.nome
    fill_in "Rg", with: @user.rg
    fill_in "Rg Emissor", with: @user.rg_emissor
    fill_in "Tel Cel", with: @user.tel_cel
    fill_in "Tel Fixo", with: @user.tel_fixo
    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "destroying a User" do
    visit users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User was successfully destroyed"
  end
end
