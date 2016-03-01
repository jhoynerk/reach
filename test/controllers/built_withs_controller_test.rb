require 'test_helper'

class BuiltWithsControllerTest < ActionController::TestCase
  setup do
    @built_with = built_withs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:built_withs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create built_with" do
    assert_difference('BuiltWith.count') do
      post :create, built_with: { city: @built_with.city, company: @built_with.company, country: @built_with.country, domain: @built_with.domain, emails: @built_with.emails, facebook: @built_with.facebook, github: @built_with.github, google: @built_with.google, instagram: @built_with.instagram, linkedin: @built_with.linkedin, location: @built_with.location, people: @built_with.people, pinterest: @built_with.pinterest, position: @built_with.position, state: @built_with.state, telephones: @built_with.telephones, twitter: @built_with.twitter, vertical: @built_with.vertical, vimeo: @built_with.vimeo, vk: @built_with.vk, youtube: @built_with.youtube, zip: @built_with.zip }
    end

    assert_redirected_to built_with_path(assigns(:built_with))
  end

  test "should show built_with" do
    get :show, id: @built_with
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @built_with
    assert_response :success
  end

  test "should update built_with" do
    patch :update, id: @built_with, built_with: { city: @built_with.city, company: @built_with.company, country: @built_with.country, domain: @built_with.domain, emails: @built_with.emails, facebook: @built_with.facebook, github: @built_with.github, google: @built_with.google, instagram: @built_with.instagram, linkedin: @built_with.linkedin, location: @built_with.location, people: @built_with.people, pinterest: @built_with.pinterest, position: @built_with.position, state: @built_with.state, telephones: @built_with.telephones, twitter: @built_with.twitter, vertical: @built_with.vertical, vimeo: @built_with.vimeo, vk: @built_with.vk, youtube: @built_with.youtube, zip: @built_with.zip }
    assert_redirected_to built_with_path(assigns(:built_with))
  end

  test "should destroy built_with" do
    assert_difference('BuiltWith.count', -1) do
      delete :destroy, id: @built_with
    end

    assert_redirected_to built_withs_path
  end
end
