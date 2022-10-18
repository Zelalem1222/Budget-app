require 'rails_helper'

RSpec.describe Purchase, type: :model do
  before(:each) do
    @user = User.create(name: 'Zelalem', email: '123@gmail.com', password: '123456')
    @category = Category.create(name: 'Food', icon: 'test', user_id: @user.id)
    @purchase = Purchase.create(name: 'Food', amount: 100, category_id: @category.id, user_id: @user.id)
  end

  it 'is valid with valid attributes' do
    expect(@purchase).to be_valid
  end

  it 'is not valid without a name' do
    @purchase.name = nil
    expect(@purchase).to_not be_valid
  end

  it 'is not valid without an amount' do
    @purchase.amount = nil
    expect(@purchase).to_not be_valid
  end

  it 'is not valid without a category_id' do
    @purchase.category_id = nil
    expect(@purchase).to_not be_valid
  end

  it 'is not valid without a user_id' do
    @purchase.user_id = nil
    expect(@purchase).to_not be_valid
  end
end
