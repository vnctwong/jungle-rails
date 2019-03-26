require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    
    it 'returns true if saved when all four fields valid' do
      @category = Category.create!(name: 'rspecTest')
      @product = @category.products.new(name: 'ex1', price: 2, quantity: 2)
      expect(@product.save).to eq true
    end 

    it 'returns false if saved when name field invalid' do
      @category = Category.create!(name: 'rspecTest')
      @product = @category.products.new(price: 2, quantity: 2)
      expect(@product.save).to eq false
    end

    it 'returns false if saved when price field invalid' do
      @category = Category.create!(name: 'rspecTest')
      @product = @category.products.new(name: 'ex1', quantity: 2)
      expect(@product.save).to eq false
    end

    it 'returns false if saved when quantity field invalid' do
      @category = Category.create!(name: 'rspecTest')
      @product = @category.products.new(name: 'ex1', price: 2)
      expect(@product.save).to eq false
    end

    it 'returns false if saved when category field invalid' do
      # @category = Category.create!(name: 'rspecTest')
      @product = Product.new(name: 'ex1', price: 2, quantity: 2)
      expect(@product.save).to eq false
    end

  end
end
