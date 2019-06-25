require "application_system_test_case"

class CustomersTest < ApplicationSystemTestCase
  setup do
    @customer = customers(:one)
  end

  test "visiting the index" do
    visit customers_url
    assert_selector "h1", text: "Customers"
  end

  test "creating a Customer" do
    visit customers_url
    click_on "New Customer"

    fill_in "Cep", with: @customer.cep
    fill_in "Cpf", with: @customer.cpf
    fill_in "Dt Nasc", with: @customer.dt_nasc
    fill_in "Email", with: @customer.email
    fill_in "End Cid", with: @customer.end_cid
    fill_in "End Compl", with: @customer.end_compl
    fill_in "End Logr", with: @customer.end_logr
    fill_in "End Num", with: @customer.end_num
    fill_in "End Ug", with: @customer.end_ug
    fill_in "Name", with: @customer.name
    fill_in "Rg", with: @customer.rg
    fill_in "Rg Emissor", with: @customer.rg_emissor
    fill_in "Tel Cel", with: @customer.tel_cel
    fill_in "Tel Fixo", with: @customer.tel_fixo
    fill_in "Tel Trab", with: @customer.tel_trab
    click_on "Create Customer"

    assert_text "Customer was successfully created"
    click_on "Back"
  end

  test "updating a Customer" do
    visit customers_url
    click_on "Edit", match: :first

    fill_in "Cep", with: @customer.cep
    fill_in "Cpf", with: @customer.cpf
    fill_in "Dt Nasc", with: @customer.dt_nasc
    fill_in "Email", with: @customer.email
    fill_in "End Cid", with: @customer.end_cid
    fill_in "End Compl", with: @customer.end_compl
    fill_in "End Logr", with: @customer.end_logr
    fill_in "End Num", with: @customer.end_num
    fill_in "End Ug", with: @customer.end_ug
    fill_in "Name", with: @customer.name
    fill_in "Rg", with: @customer.rg
    fill_in "Rg Emissor", with: @customer.rg_emissor
    fill_in "Tel Cel", with: @customer.tel_cel
    fill_in "Tel Fixo", with: @customer.tel_fixo
    fill_in "Tel Trab", with: @customer.tel_trab
    click_on "Update Customer"

    assert_text "Customer was successfully updated"
    click_on "Back"
  end

  test "destroying a Customer" do
    visit customers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customer was successfully destroyed"
  end
end
