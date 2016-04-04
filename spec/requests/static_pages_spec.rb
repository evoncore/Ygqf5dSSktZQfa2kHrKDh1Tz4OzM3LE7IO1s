require 'rails_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have the right title" do
<<<<<<< HEAD
      visit '/static_pages/home'
=======
      visit 'static_pages/home'
>>>>>>> 844b13abbb79b1533673415893063767d088c72e
      expect(page).to have_title('Home')
    end

  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the right title" do
<<<<<<< HEAD
      visit '/static_pages/help'
=======
      visit 'static_pages/help'
>>>>>>> 844b13abbb79b1533673415893063767d088c72e
      expect(page).to have_title('Help')
    end

  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the right title" do
<<<<<<< HEAD
      visit '/static_pages/about'
=======
      visit 'static_pages/about'
>>>>>>> 844b13abbb79b1533673415893063767d088c72e
      expect(page).to have_title('About')
    end

  end

<<<<<<< HEAD
  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end

    it "should have the right title" do
      visit '/static_pages/contact'
      expect(page).to have_title('Contact')
    end

  end

=======
>>>>>>> 844b13abbb79b1533673415893063767d088c72e
end