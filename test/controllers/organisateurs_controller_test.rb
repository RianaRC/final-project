require 'test_helper'

class OrganisateursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @organisateur = organisateurs(:one)
  end

  test "should get index" do
    get organisateurs_url
    assert_response :success
  end

  test "should get new" do
    get new_organisateur_url
    assert_response :success
  end

  test "should create organisateur" do
    assert_difference('Organisateur.count') do
      post organisateurs_url, params: { organisateur: { about: @organisateur.about, kind: @organisateur.kind, name: @organisateur.name } }
    end

    assert_redirected_to organisateur_url(Organisateur.last)
  end

  test "should show organisateur" do
    get organisateur_url(@organisateur)
    assert_response :success
  end

  test "should get edit" do
    get edit_organisateur_url(@organisateur)
    assert_response :success
  end

  test "should update organisateur" do
    patch organisateur_url(@organisateur), params: { organisateur: { about: @organisateur.about, kind: @organisateur.kind, name: @organisateur.name } }
    assert_redirected_to organisateur_url(@organisateur)
  end

  test "should destroy organisateur" do
    assert_difference('Organisateur.count', -1) do
      delete organisateur_url(@organisateur)
    end

    assert_redirected_to organisateurs_url
  end
end
