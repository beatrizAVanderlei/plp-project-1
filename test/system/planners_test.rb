require "application_system_test_case"

class PlannersTest < ApplicationSystemTestCase
  setup do
    @planner = planners(:one)
  end

  test "visiting the index" do
    visit planners_url
    assert_selector "h1", text: "Planners"
  end

  test "should create planner" do
    visit planners_url
    click_on "New planner"

    click_on "Create Planner"

    assert_text "Planner was successfully created"
    click_on "Back"
  end

  test "should update Planner" do
    visit planner_url(@planner)
    click_on "Edit this planner", match: :first

    click_on "Update Planner"

    assert_text "Planner was successfully updated"
    click_on "Back"
  end

  test "should destroy Planner" do
    visit planner_url(@planner)
    click_on "Destroy this planner", match: :first

    assert_text "Planner was successfully destroyed"
  end
end
