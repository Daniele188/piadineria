require "test_helper"

class PiadinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @piadine = piadines(:one)
  end

  test "should get index" do
    get piadines_url
    assert_response :success
  end

  test "should get new" do
    get new_piadine_url
    assert_response :success
  end

  test "should create piadine" do
    assert_difference('Piadine.count') do
      post piadines_url, params: { piadine: { Nome: @piadine.Nome, farcitura: @piadine.farcitura, impasto: @piadine.impasto, indirizzo: @piadine.indirizzo, quantità: @piadine.quantità } }
    end

    assert_redirected_to piadine_url(Piadine.last)
  end

  test "should show piadine" do
    get piadine_url(@piadine)
    assert_response :success
  end

  test "should get edit" do
    get edit_piadine_url(@piadine)
    assert_response :success
  end

  test "should update piadine" do
    patch piadine_url(@piadine), params: { piadine: { Nome: @piadine.Nome, farcitura: @piadine.farcitura, impasto: @piadine.impasto, indirizzo: @piadine.indirizzo, quantità: @piadine.quantità } }
    assert_redirected_to piadine_url(@piadine)
  end

  test "should destroy piadine" do
    assert_difference('Piadine.count', -1) do
      delete piadine_url(@piadine)
    end

    assert_redirected_to piadines_url
  end
end
