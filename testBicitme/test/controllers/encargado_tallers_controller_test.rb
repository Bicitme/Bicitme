require 'test_helper'

class EncargadoTallersControllerTest < ActionController::TestCase
  setup do
    @encargado_taller = encargado_tallers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:encargado_tallers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create encargado_taller" do
    assert_difference('EncargadoTaller.count') do
      post :create, encargado_taller: { enc_estado: @encargado_taller.enc_estado, enc_rol: @encargado_taller.enc_rol, enc_run: @encargado_taller.enc_run, enc_tiempo: @encargado_taller.enc_tiempo, usuario_id: @encargado_taller.usuario_id }
    end

    assert_redirected_to encargado_taller_path(assigns(:encargado_taller))
  end

  test "should show encargado_taller" do
    get :show, id: @encargado_taller
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @encargado_taller
    assert_response :success
  end

  test "should update encargado_taller" do
    patch :update, id: @encargado_taller, encargado_taller: { enc_estado: @encargado_taller.enc_estado, enc_rol: @encargado_taller.enc_rol, enc_run: @encargado_taller.enc_run, enc_tiempo: @encargado_taller.enc_tiempo, usuario_id: @encargado_taller.usuario_id }
    assert_redirected_to encargado_taller_path(assigns(:encargado_taller))
  end

  test "should destroy encargado_taller" do
    assert_difference('EncargadoTaller.count', -1) do
      delete :destroy, id: @encargado_taller
    end

    assert_redirected_to encargado_tallers_path
  end
end
