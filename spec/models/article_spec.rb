require 'rails_helper'
require 'faker'

RSpec.describe Article, type: :model do
  context 'Check if it creates Article instances successfully' do
    before (:each) do
      5.times do
        name = Faker::Books::CultureSeries.unique.culture_ship
        url = Faker::Internet.url
        Article.create(name: name, url: url)
      end
    end

    it 'should create 5 articles' do
      expect(Article.count).to eq(5)
    end

    it 'should create articles with unique urls' do
      expect(Article.pluck(:url).uniq.count).to eq(5)
    end
  end

  context 'Check if it validates Article instances successfully' do
    it 'should not create an article without a name' do
      article = Article.new(url: 'https://www.google.com')
      expect(article.valid?).to eq(false)
    end

    it 'should not create an article without a url' do
      article = Article.new(name: 'Google')
      expect(article.valid?).to eq(false)
    end

    it 'should not create an article with a non-unique url' do
      article = Article.new(name: 'Google', url: 'https://www.google.com')
      article.save
      article2 = Article.new(name: 'Google', url: 'https://www.google.com')
      expect(article2.valid?).to eq(false)
    end

    it 'should create an article with a unique url' do
      article = Article.new(name: 'Google', url: 'https://www.google.com')
      article.save
      article2 = Article.new(name: 'Twitter', url: 'https://www.twitter.com')
      expect(article2.valid?).to eq(true)
    end

    it 'should create an article with a valid name' do
      article = Article.new(name: 'Google', url: 'https://www.google.com')
      expect(article.valid?).to eq(true)
    end
  end

  context 'Check if it sorts Article instances successfully' do
    before (:each) do
      5.times do
        name = Faker::Books::CultureSeries.unique.culture_ship
        url = Faker::Internet.url
        Article.create(name: name, url: url)
      end
    end

    it 'should sort articles by name in ascending order' do
      expect(Article.sorted('name', 'asc').pluck(:name)).to eq(Article.pluck(:name).sort)
    end

    it 'should sort articles by name in descending order' do
      expect(Article.sorted('name', 'desc').pluck(:name)).to eq(Article.pluck(:name).sort.reverse)
    end

    it 'should sort articles by url in ascending order' do
      expect(Article.sorted('url', 'asc').pluck(:url)).to eq(Article.pluck(:url).sort)
    end

    it 'should sort articles by url in descending order' do
      expect(Article.sorted('url', 'desc').pluck(:url)).to eq(Article.pluck(:url).sort.reverse)
    end
  end

  context 'Check if it searches Article instances successfully' do
    it 'should find articles by name' do
      article = Article.new(name: 'Google and Chrome', url: 'https://www.google.com')
      article.save
      expect(Article.search_by_name('Google').count).to eql(1)
    end
  end
end