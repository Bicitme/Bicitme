require 'test_helper'

class CiclistaControllerTest < ActionController::TestCase
  setup do
    @ciclistum = ciclista(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ciclista)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ciclistum" do
    assert_difference('Ciclistum.count') do
      post :create, ciclistum: { cic_cant_den: @ciclistum.cic_cant_den, cic_cant_rep: @ciclistum.cic_cant_rep, cic_estado: @ciclistum.cic_estado, cic_fono: @ciclistum.cic_fono, cic_run: @ciclistum.cic_run, usuario_id: @ciclistum.usuario_id }
    end

    assert_redirected_to ciclistum_path(assigns(:ciclistum))
  end

  test "should show ciclistum" do
    get :show, id: @ciclistum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ciclistum
    assert_response :success
  end

  test "should update ciclistum" do
    patch :update, id: @ciclistum, ciclistum: { cic_cant_den: @ciclistum.cic_cant_den, cic_cant_rep: @ciclistum.cic_cant_rep, cic_estado: @ciclistum.cic_estado, cic_fono: @ciclistum.cic_fono, cic_run: @ciclistum.cic_run, usuario_id: @ciclistum.usuario_id }
    assert_redirected_to ciclistum_path(assigns(:ciclistum))
  end

  test "should destroy ciclistum" do
    assert_difference('Ciclistum.count', -1) do
      delete :destroy, id: @ciclistum
    end

    assert_redirected_to ciclista_path
  end
end
