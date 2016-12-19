require 'test_helper'

class PresupuestosControllerTest < ActionController::TestCase
  setup do
    @presupuesto = presupuestos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:presupuestos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create presupuesto" do
    assert_difference('Presupuesto.count') do
      post :create, presupuesto: { prep_comentario: @presupuesto.prep_comentario, prep_estado: @presupuesto.prep_estado, prep_precio_max: @presupuesto.prep_precio_max, prep_precio_min: @presupuesto.prep_precio_min, reparacion_id: @presupuesto.reparacion_id, taller_id: @presupuesto.taller_id }
    end

    assert_redirected_to presupuesto_path(assigns(:presupuesto))
  end

  test "should show presupuesto" do
    get :show, id: @presupuesto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @presupuesto
    assert_response :success
  end

  test "should update presupuesto" do
    patch :update, id: @presupuesto, presupuesto: { prep_comentario: @presupuesto.prep_comentario, prep_estado: @presupuesto.prep_estado, prep_precio_max: @presupuesto.prep_precio_max, prep_precio_min: @presupuesto.prep_precio_min, reparacion_id: @presupuesto.reparacion_id, taller_id: @presupuesto.taller_id }
    assert_redirected_to presupuesto_path(assigns(:presupuesto))
  end

  test "should destroy presupuesto" do
    assert_difference('Presupuesto.count', -1) do
      delete :destroy, id: @presupuesto
    end

    assert_redirected_to presupuestos_path
  end
end
