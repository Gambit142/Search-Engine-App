require 'rails_helper'

RSpec.describe Query, type: :model do
  context 'Check if it creates Query instances successfully' do
    before (:each) do
      user = User.create(name: 'John Doe', email: 'johndoe@example.com', password: 'password', password_confirmation: 'password')
      5.times do
        text = Faker::Books::CultureSeries.unique.culture_ship
        search_counter = 1
        Query.create(text: text, search_counter: search_counter, user: user)
      end
    end

    it 'should create 5 queries' do
      expect(Query.count).to eq(5)
    end
  end
  context 'Check if it validates Query instances successfully' do
    it 'should not create a query without a text' do
      query = Query.new(search_counter: 1)
      expect(query.valid?).to eq(false)
    end

    it 'should not create a query without a search_counter' do
      query = Query.new(text: 'Google')
      expect(query.valid?).to eq(false)
    end

    it 'should not create a query without a user' do
      query = Query.new(text: 'Google', search_counter: 1)
      expect(query.valid?).to eq(false)
    end
  end

  context "Check for most searched queries" do
    it "should return the most searched query" do
      user = User.create(name: 'John Doe', email: 'johndoe@example.com', password: 'password', password_confirmation: 'password')

      query1 = Query.create(text: 'Hello Help Juice', search_counter: 1, user: user)
      query2 = Query.create(text: 'Hello World!!', search_counter: 2, user: user)
      query3 = Query.create(text: 'Hello Microverse', search_counter: 1, user: user)

      expect(Query.most_searched.first.text).to eq('Hello World!!')
      expect(Query.most_searched).to match_array([query2, query1, query3])
    end
  end
end