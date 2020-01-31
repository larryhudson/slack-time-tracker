require "application_system_test_case"

class JobEntriesTest < ApplicationSystemTestCase
  setup do
    @job_entry = job_entries(:one)
  end

  test "visiting the index" do
    visit job_entries_url
    assert_selector "h1", text: "Job Entries"
  end

  test "creating a Job entry" do
    visit job_entries_url
    click_on "New Job Entry"

    fill_in "From", with: @job_entry.from
    fill_in "Job", with: @job_entry.job_id
    fill_in "Until", with: @job_entry.until
    fill_in "User", with: @job_entry.user_id
    click_on "Create Job entry"

    assert_text "Job entry was successfully created"
    click_on "Back"
  end

  test "updating a Job entry" do
    visit job_entries_url
    click_on "Edit", match: :first

    fill_in "From", with: @job_entry.from
    fill_in "Job", with: @job_entry.job_id
    fill_in "Until", with: @job_entry.until
    fill_in "User", with: @job_entry.user_id
    click_on "Update Job entry"

    assert_text "Job entry was successfully updated"
    click_on "Back"
  end

  test "destroying a Job entry" do
    visit job_entries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Job entry was successfully destroyed"
  end
end
