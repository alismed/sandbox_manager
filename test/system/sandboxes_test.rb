require "application_system_test_case"

class SandboxesTest < ApplicationSystemTestCase
  setup do
    @sandbox = sandboxes(:one)
  end

  test "visiting the index" do
    visit sandboxes_url
    assert_selector "h1", text: "Sandboxes"
  end

  test "creating a Sandbox" do
    visit sandboxes_url
    click_on "New Sandbox"

    fill_in "Description", with: @sandbox.description
    fill_in "End Date", with: @sandbox.end_date
    fill_in "Expected End Date", with: @sandbox.expected_end_date
    fill_in "Name", with: @sandbox.name
    fill_in "Owner", with: @sandbox.owner
    fill_in "Owner Team", with: @sandbox.owner_team
    fill_in "Sandbox Type", with: @sandbox.sandbox_type
    fill_in "Start Date", with: @sandbox.start_date
    click_on "Create Sandbox"

    assert_text "Sandbox was successfully created"
    click_on "Back"
  end

  test "updating a Sandbox" do
    visit sandboxes_url
    click_on "Edit", match: :first

    fill_in "Description", with: @sandbox.description
    fill_in "End Date", with: @sandbox.end_date
    fill_in "Expected End Date", with: @sandbox.expected_end_date
    fill_in "Name", with: @sandbox.name
    fill_in "Owner", with: @sandbox.owner
    fill_in "Owner Team", with: @sandbox.owner_team
    fill_in "Sandbox Type", with: @sandbox.sandbox_type
    fill_in "Start Date", with: @sandbox.start_date
    click_on "Update Sandbox"

    assert_text "Sandbox was successfully updated"
    click_on "Back"
  end

  test "destroying a Sandbox" do
    visit sandboxes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sandbox was successfully destroyed"
  end
end
