require 'test_helper'

class ReparacionsControllerTest < ActionController::TestCase
  setup do
    @reparacion = reparacions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reparacions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reparacion" do
    assert_difference('Reparacion.count') do
      post :create, reparacion: { bicicleta_id: @reparacion.bicicleta_id, calificacion_id: @reparacion.calificacion_id, rep_comentario: @reparacion.rep_comentario, rep_direccion: @reparacion.rep_direccion, rep_distancia: @reparacion.rep_distancia, rep_estado: @reparacion.rep_estado, rep_fecha_in: @reparacion.rep_fecha_in, rep_fecha_term: @reparacion.rep_fecha_term }
    end

    assert_redirected_to reparacion_path(assigns(:reparacion))
  end

  test "should show reparacion" do
    get :show, id: @reparacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reparacion
    assert_response :success
  end

  test "should update reparacion" do
    patch :update, id: @reparacion, reparacion: { bicicleta_id: @reparacion.bicicleta_id, calificacion_id: @reparacion.calificacion_id, rep_comentario: @reparacion.rep_comentario, rep_direccion: @reparacion.rep_direccion, rep_distancia: @reparacion.rep_distancia, rep_estado: @reparacion.rep_estado, rep_fecha_in: @reparacion.rep_fecha_in, rep_fecha_term: @reparacion.rep_fecha_term }
    assert_redirected_to reparacion_path(assigns(:reparacion))
  end

  test "should destroy reparacion" do
    assert_difference('Reparacion.count', -1) do
      delete :destroy, id: @reparacion
    end

    assert_redirected_to reparacions_path
  end
end
