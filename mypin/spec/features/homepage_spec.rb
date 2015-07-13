require 'spec_helper'

feature "the homepage" do
  scenario "a user can see all pins" do
    post = Pin.create(:title => "test pin title", :description => "this is test for pin")
    #as a user I want to see all pins on the index page
    visit('/')
    expect(page).to include(post)
  end
end