require "rails_helper"

RSpec.describe Article, :type => :model do

  describe "validation" do 
    it do
      should validate_presence_of :title
    end
    it do
      should validate_presence_of :text
    end
  end

  describe "associations" do 
    it do 
      should have_many :comments
    end
  end

  describe "#subject" do
    it "returns the article title" do
      #create object article
      article = create(:article, title: 'Lorem Ipsum')
 
      expect(article.subject).to eq 'Lorem Ipsum'
    end
  end

  describe "#last_comment" do
    it "returns the last comment" do
      #create article with comments
      article = create(:article_with_comments)

      #check
      expect(article.last_comment.body).to eq "comment body 3"
    end
  end
  
end