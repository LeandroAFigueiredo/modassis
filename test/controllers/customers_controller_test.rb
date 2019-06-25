require 'test_helper'

class CustomersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get customers_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_url
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post customers_url, params: { customer: { cep: @customer.cep, cpf: @customer.cpf, dt_nasc: @customer.dt_nasc, email: @customer.email, end_cid: @customer.end_cid, end_compl: @customer.end_compl, end_logr: @customer.end_logr, end_num: @customer.end_num, end_ug: @customer.end_ug, name: @customer.name, rg: @customer.rg, rg_emissor: @customer.rg_emissor, tel_cel: @customer.tel_cel, tel_fixo: @customer.tel_fixo, tel_trab: @customer.tel_trab } }
    end

    assert_redirected_to customer_url(Customer.last)
  end

  test "should show customer" do
    get customer_url(@customer)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_url(@customer)
    assert_response :success
  end

  test "should update customer" do
    patch customer_url(@customer), params: { customer: { cep: @customer.cep, cpf: @customer.cpf, dt_nasc: @customer.dt_nasc, email: @customer.email, end_cid: @customer.end_cid, end_compl: @customer.end_compl, end_logr: @customer.end_logr, end_num: @customer.end_num, end_ug: @customer.end_ug, name: @customer.name, rg: @customer.rg, rg_emissor: @customer.rg_emissor, tel_cel: @customer.tel_cel, tel_fixo: @customer.tel_fixo, tel_trab: @customer.tel_trab } }
    assert_redirected_to customer_url(@customer)
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete customer_url(@customer)
    end

    assert_redirected_to customers_url
  end
end
