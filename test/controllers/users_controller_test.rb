require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { admin: @user.admin, cep: @user.cep, cpf: @user.cpf, dt_nasc: @user.dt_nasc, end_cid: @user.end_cid, end_compl: @user.end_compl, end_logr: @user.end_logr, end_num: @user.end_num, end_ug: @user.end_ug, nome: @user.nome, rg: @user.rg, rg_emissor: @user.rg_emissor, tel_cel: @user.tel_cel, tel_fixo: @user.tel_fixo } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { admin: @user.admin, cep: @user.cep, cpf: @user.cpf, dt_nasc: @user.dt_nasc, end_cid: @user.end_cid, end_compl: @user.end_compl, end_logr: @user.end_logr, end_num: @user.end_num, end_ug: @user.end_ug, nome: @user.nome, rg: @user.rg, rg_emissor: @user.rg_emissor, tel_cel: @user.tel_cel, tel_fixo: @user.tel_fixo } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
