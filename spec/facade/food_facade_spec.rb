require 'rails_helper'

RSpec.describe FoodFacade  do
  describe 'class methods' do
    describe '.ingredient_search' do
      it 'returns an array of food objects and a count' do
        VCR.use_cassette 'sweet_tato' do
          actual = FoodFacade.ingredient_search('sweet potatoes')

          expect(actual.class).to eq(Array)
          expect(actual[0]).to eq(45635)
          expect(actual[1].class).to eq(Array)
          expect(actual[1][0].class).to eq(Food)
          expect(actual[1].length).to eq(10)
        end
      end
    end
  end
end