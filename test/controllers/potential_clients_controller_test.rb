require 'test_helper'

class PotentialClientsControllerTest < ActionController::TestCase
  setup do
    @potential_client = potential_clients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:potential_clients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create potential_client" do
    assert_difference('PotentialClient.count') do
      post :create, potential_client: { built_with_id: @potential_client.built_with_id, email: @potential_client.email, last_name: @potential_client.last_name, name: @potential_client.name, title: @potential_client.title }
    end

    assert_redirected_to potential_client_path(assigns(:potential_client))
  end

  test "should show potential_client" do
    get :show, id: @potential_client
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @potential_client
    assert_response :success
  end

  test "should update potential_client" do
    patch :update, id: @potential_client, potential_client: { built_with_id: @potential_client.built_with_id, email: @potential_client.email, last_name: @potential_client.last_name, name: @potential_client.name, title: @potential_client.title }
    assert_redirected_to potential_client_path(assigns(:potential_client))
  end

  test "should destroy potential_client" do
    assert_difference('PotentialClient.count', -1) do
      delete :destroy, id: @potential_client
    end

    assert_redirected_to potential_clients_path
  end
end
