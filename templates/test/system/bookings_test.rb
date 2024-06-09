require "application_system_test_case"

class BookingsTest < ApplicationSystemTestCase
  setup do
    Booking.seed
  end

  test "visiting the index, can go forward and back" do
    visit bookings_url
    assert_selector "#test1", text: "Tap on a date to book ..."
    find('#btn-prev-month').click
    find('#btn-next-month').click
    find('#btn-next-month').click
    find("#partial-bookings-nav .dropdown").click
    click_link "Exit"
    sleep 1
  end

  test "should create booking" do
    visit bookings_url
    find("#calendar-cell-1716793200").click
    fill_in('bookingname', with: 'Test123')
    click_button 'Save'
    assert_selector "#partial-flash", text: "Saved"
  end

  test "cannot create booking" do
    visit bookings_url
    find("#calendar-cell-1716793200").click
    fill_in('bookingname', with: 'x')
    click_button 'Save'
    assert_selector "#partial-flash", text: "Name is too short (minimum is 2 characters)"
    click_button 'DISMISS'
  end

  test "should edit a booking" do
    visit bookings_url
    first(".booking-strip").click
    fill_in('bookingname', with: 'Lorem Ipsum Dolor')
    click_button 'Save'
    assert_selector "#partial-flash", text: "Saved"
  end

  test "cannot edit booking" do
    visit bookings_url
    first(".booking-strip").click
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
    assert_equal 39, scrolls
    assert_no_text "Acme Corp 0"
  end
end
