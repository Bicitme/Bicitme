require 'test_helper'

class RobosControllerTest < ActionController::TestCase
  setup do
    @robo = robos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:robos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create robo" do
    assert_difference('Robo.count') do
      post :create, robo: { bicicleta_id: @robo.bicicleta_id, comuna_id: @robo.comuna_id, robo_comentario: @robo.robo_comentario, robo_direccion: @robo.robo_direccion, robo_fecha: @robo.robo_fecha, robo_img: @robo.robo_img }
    end

    assert_redirected_to robo_path(assigns(:robo))
  end

  test "should show robo" do
    get :show, id: @robo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @robo
    assert_response :success
  end

  test "should update robo" do
    patch :update, id: @robo, robo: { bicicleta_id: @robo.bicicleta_id, comuna_id: @robo.comuna_id, robo_comentario: @robo.robo_comentario, robo_direccion: @robo.robo_direccion, robo_fecha: @robo.robo_fecha, robo_img: @robo.robo_img }
    assert_redirected_to robo_path(assigns(:robo))
  end

  test "should destroy robo" do
    assert_difference('Robo.count', -1) do
      delete :destroy, id: @robo
    end

    assert_redirected_to robos_path
  end
end
