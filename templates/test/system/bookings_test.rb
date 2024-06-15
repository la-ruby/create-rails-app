require "application_system_test_case"

class BookingsTest < ApplicationSystemTestCase
  setup do
    Booking.seed
  end

  test "visiting the index, can go forward and back" do
    visit bookings_url
    assert_selector "#test1", text: "Tap on a date to book ..."
    find('#btn-prev-month').click
    sleep 1
    find('#btn-next-month').click
    sleep 1
    find('#btn-next-month').click
    sleep 1
    find("#partial-bookings-nav .dropdown").click
    sleep 1 # Capybara::ElementNotFound: Unable to find visible link "Exit"
    click_link "Exit"
    sleep 0.5 # Eelenium::WebDriver::Error::ElementNotInteractableError: element not interactable
  end

  test "should create booking" do
    visit bookings_url
    sleep 1
    find("#calendar-cell-1716793200").click
    sleep 1
    #find("#calendar-cell-1716793200").click
    fill_in('bookingname', with: 'Test123')
    click_button 'Save'
    assert_selector "#partial-flash", text: "Saved"
  end

  test "cannot create booking" do
    visit bookings_url
    find("#calendar-cell-1716793200").click
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
    # save_screenshot
    #debugger
    evaluate_script "$(\"div:contains('__________')\").scrollLeft(100)"
    #save_screenshot
    #debugger
    first(".booking-strip").click
    assert_text "Acme Corp 0"
    click_button 'DELETE'
    assert_selector "#partial-flash", text: "Deleted"
    scrolls = evaluate_script "$(\"div:contains('__________')\").map(" \
                              "function() { return $(this).scrollLeft(); }).get()" \
                              ".reduce((a, b) => a + b, 0);"
    assert_equal 39, scrolls
    assert_no_text "Acme Corp 0"
  end
end
