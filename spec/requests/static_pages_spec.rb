require 'spec_helper'

describe "StaticPages" do
  describe "HomePage" do
    it "should have the content 'Simple App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Simple App')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Simple App")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
  end

  describe "HelpPage" do
    it "should have the content 'help'" do
      visit '/static_pages/help'
      expect(page).to have_content('help')
    end
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("Ruby on Rails Tutorial Simple App | Help")
    end
  end

  describe "AboutPage" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title('Ruby on Rails Tutorial Simple App | About Us')
    end
  end
end
