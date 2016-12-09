require 'test_helper'

class BicicletaControllerTest < ActionController::TestCase
  setup do
    @bicicletum = bicicleta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bicicleta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bicicletum" do
    assert_difference('Bicicletum.count') do
      post :create, bicicletum: { bic_aro: @bicicletum.bic_aro, bic_cic_run: @bicicletum.bic_cic_run, bic_color_princ: @bicicletum.bic_color_princ, bic_estado_robo: @bicicletum.bic_estado_robo, bic_id: @bicicletum.bic_id, bic_img_1: @bicicletum.bic_img_1, bic_img_2: @bicicletum.bic_img_2, bic_marca: @bicicletum.bic_marca, bic_modelo: @bicicletum.bic_modelo, bic_num_serie: @bicicletum.bic_num_serie, bic_tipo: @bicicletum.bic_tipo, bic_velocidades: @bicicletum.bic_velocidades }
    end

    assert_redirected_to bicicletum_path(assigns(:bicicletum))
  end

  test "should show bicicletum" do
    get :show, id: @bicicletum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bicicletum
    assert_response :success
  end

  test "should update bicicletum" do
    patch :update, id: @bicicletum, bicicletum: { bic_aro: @bicicletum.bic_aro, bic_cic_run: @bicicletum.bic_cic_run, bic_color_princ: @bicicletum.bic_color_princ, bic_estado_robo: @bicicletum.bic_estado_robo, bic_id: @bicicletum.bic_id, bic_img_1: @bicicletum.bic_img_1, bic_img_2: @bicicletum.bic_img_2, bic_marca: @bicicletum.bic_marca, bic_modelo: @bicicletum.bic_modelo, bic_num_serie: @bicicletum.bic_num_serie, bic_tipo: @bicicletum.bic_tipo, bic_velocidades: @bicicletum.bic_velocidades }
    assert_redirected_to bicicletum_path(assigns(:bicicletum))
  end

  test "should destroy bicicletum" do
    assert_difference('Bicicletum.count', -1) do
      delete :destroy, id: @bicicletum
    end

    assert_redirected_to bicicleta_path
  end
end
