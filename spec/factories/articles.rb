FactoryGirl.define do

  factory :article do
    title "Article title"
    text "Article text"

    #create factory with name: article_with_comments
    #for create article with many comment
    factory :article_with_comments do
      #after create article
      after :create do |article, evaluar|
        #create list with 3 comments
        create_list :comments, 3, article: article
      end
    end
  end

end