require "application_system_test_case"

class BookingsTest < ApplicationSystemTestCase
  setup do
    Booking.seed
  end

  test "visiting the index, can go forward and back" do
    visit bookings_url
    # all(".col.day").each do |elem|
    #   puts "#{elem['id']} #{elem.text.gsub(/\n/, '')} #{Time.now.utc.to_i}"
    # end
    assert_selector ".nav-link", text: "January 1970"
    find('#btn-next-month').click
    assert_selector ".nav-link", text: "February 1970"
    find('#btn-prev-month').click
    assert_selector ".nav-link", text: "December 1969" # not sure why
    find("#partial-bookings-nav .dropdown").click
    sleep 1 # Capybara::ElementNotFound: Unable to find visible link "Exit"
    click_link "Exit"
    sleep 0.5 # Eelenium::WebDriver::Error::ElementNotInteractableError: element not interactable
  end

  test "should create booking" do
    visit bookings_url
    sleep 1
    find("#calendar-cell-950400").click
    sleep 1
    fill_in('bookingname', with: 'Test123')
    click_button 'Save'
    assert_selector "#partial-flash", text: "Saved"
  end

  test "cannot create booking" do
    visit bookings_url
    sleep 1
    find("#calendar-cell-345600").click
    sleep 1
    fill_in('bookingname', with: 'x')
    click_button 'Save'
    assert_selector "#partial-flash", text: "Name is too short (minimum is 2 characters)"
    click_button 'DISMISS'
  end

  test "should edit a booking" do
    visit bookings_url
    sleep 1
    first(".booking-strip").click
    sleep 1
    fill_in('bookingname', with: 'Lorem Ipsum Dolor')
    click_button 'Save'
    assert_selector "#partial-flash", text: "Saved"
  end

  test "cannot edit booking" do
    visit bookings_url
    sleep 1
    first(".booking-strip").click
    sleep 1
    fill_in('bookingname', with: 'y')
    click_button 'Save'
    assert_selector "#partial-flash", text: "Name is too short (minimum is 2 characters)"
    click_button 'DISMISS'
  end

  test "should delete booking, and scroll is preserved with morph" do
    visit bookings_url
    evaluate_script "$(\"div:contains('__________')\").scrollLeft(100)"
    first(".booking-strip").click
    assert_text "Acme Corp 0"
    click_button 'DELETE'
    assert_selector "#partial-flash", text: "Deleted"
    scrolls = evaluate_script "$(\"div:contains('__________')\").map(" \
                              "function() { return $(this).scrollLeft(); }).get()" \
                              ".reduce((a, b) => a + b, 0);"
    if ENV['CI']
      assert_equal 54, scrolls  # not sure why
    else
      assert_equal 39, scrolls
    end
    assert_no_text "Acme Corp 0"
  end
end
