require "application_system_test_case"

class QuotesTest < ApplicationSystemTestCase
  test "Create a new quote" do
    # When we visit the Quotes#index page we expect to see a title with the text "Quotes"
    visit quotes_path
    assert_selector "h1", text: "Quotes"

    # When we click on the link with the text "New quote" we expect to land on a page with the title "New quote"
    click_on "New quote"
    assert_selector "h1", text: "New quote"

    # When we fill in the name input with the text "Capybara quote" and we click on "Create quote"
    fill_in "Name", with: "Capybara quote"
    click_on "Create quote"

    # We expect to be redirected the the Quotes#index page with the text "Capybara quote"
    assert_selector "h1", text: "Quotes"
    assert_text "Capybara quote"
  end
end
