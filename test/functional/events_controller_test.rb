require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post :create, event: { address_id: @event.address_id, analyst_id: @event.analyst_id, arrested: @event.arrested, backup_file: @event.backup_file, crime_id: @event.crime_id, description: @event.description, drugs_id: @event.drugs_id, event_date: @event.event_date, hour: @event.hour, id: @event.id, observations: @event.observations, place_id: @event.place_id, priority: @event.priority, source: @event.source, status_event_id: @event.status_event_id, suspects: @event.suspects, township_id: @event.township_id, vehicles: @event.vehicles, victims: @event.victims, weapons_id: @event.weapons_id, zone_id: @event.zone_id }
    end

    assert_redirected_to event_path(assigns(:event))
  end

  test "should show event" do
    get :show, id: @event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event
    assert_response :success
  end

  test "should update event" do
    put :update, id: @event, event: { address_id: @event.address_id, analyst_id: @event.analyst_id, arrested: @event.arrested, backup_file: @event.backup_file, crime_id: @event.crime_id, description: @event.description, drugs_id: @event.drugs_id, event_date: @event.event_date, hour: @event.hour, id: @event.id, observations: @event.observations, place_id: @event.place_id, priority: @event.priority, source: @event.source, status_event_id: @event.status_event_id, suspects: @event.suspects, township_id: @event.township_id, vehicles: @event.vehicles, victims: @event.victims, weapons_id: @event.weapons_id, zone_id: @event.zone_id }
    assert_redirected_to event_path(assigns(:event))
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete :destroy, id: @event
    end

    assert_redirected_to events_path
  end
end
