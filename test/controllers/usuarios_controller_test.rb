require 'test_helper'

class UsuariosControllerTest < ActionController::TestCase
  setup do
    @usuario = usuarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usuarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usuario" do
    assert_difference('Usuario.count') do
      post :create, usuario: { usuar_ap_mat: @usuario.usuar_ap_mat, usuar_ap_pat: @usuario.usuar_ap_pat, usuar_contrasegna: @usuario.usuar_contrasegna, usuar_correo: @usuario.usuar_correo, usuar_nom_usuario: @usuario.usuar_nom_usuario, usuar_run: @usuario.usuar_run, usuar_tipo_cod: @usuario.usuar_tipo_cod }
    end

    assert_redirected_to usuario_path(assigns(:usuario))
  end

  test "should show usuario" do
    get :show, id: @usuario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usuario
    assert_response :success
  end

  test "should update usuario" do
    patch :update, id: @usuario, usuario: { usuar_ap_mat: @usuario.usuar_ap_mat, usuar_ap_pat: @usuario.usuar_ap_pat, usuar_contrasegna: @usuario.usuar_contrasegna, usuar_correo: @usuario.usuar_correo, usuar_nom_usuario: @usuario.usuar_nom_usuario, usuar_run: @usuario.usuar_run, usuar_tipo_cod: @usuario.usuar_tipo_cod }
    assert_redirected_to usuario_path(assigns(:usuario))
  end

  test "should destroy usuario" do
    assert_difference('Usuario.count', -1) do
      delete :destroy, id: @usuario
    end

    assert_redirected_to usuarios_path
  end
end
