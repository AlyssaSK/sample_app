require 'spec_helper'

describe "BlogPosts" do
  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/blog_posts/home'
      expect(page).to have_content('Sample App')
    end
  end
  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/blog_posts/help'
      expect(page).to have_content('Help')
    end
  end
  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/blog_posts/about'
      expect(page).to have_content('About Us')
    end
  end
end