require 'test_helper'

class TallersControllerTest < ActionController::TestCase
  setup do
    @taller = tallers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tallers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create taller" do
    assert_difference('Taller.count') do
      post :create, taller: { comuna_id: @taller.comuna_id, encargado_id: @taller.encargado_id, taller_calificacion: @taller.taller_calificacion, taller_cant_cont_den: @taller.taller_cant_cont_den, taller_cant_den: @taller.taller_cant_den, taller_descripcion: @taller.taller_descripcion, taller_direccion: @taller.taller_direccion, taller_estado: @taller.taller_estado, taller_fono: @taller.taller_fono, taller_nombre: @taller.taller_nombre, taller_patente: @taller.taller_patente, taller_web_page: @taller.taller_web_page }
    end

    assert_redirected_to taller_path(assigns(:taller))
  end

  test "should show taller" do
    get :show, id: @taller
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @taller
    assert_response :success
  end

  test "should update taller" do
    patch :update, id: @taller, taller: { comuna_id: @taller.comuna_id, encargado_id: @taller.encargado_id, taller_calificacion: @taller.taller_calificacion, taller_cant_cont_den: @taller.taller_cant_cont_den, taller_cant_den: @taller.taller_cant_den, taller_descripcion: @taller.taller_descripcion, taller_direccion: @taller.taller_direccion, taller_estado: @taller.taller_estado, taller_fono: @taller.taller_fono, taller_nombre: @taller.taller_nombre, taller_patente: @taller.taller_patente, taller_web_page: @taller.taller_web_page }
    assert_redirected_to taller_path(assigns(:taller))
  end

  test "should destroy taller" do
    assert_difference('Taller.count', -1) do
      delete :destroy, id: @taller
    end

    assert_redirected_to tallers_path
  end
end
