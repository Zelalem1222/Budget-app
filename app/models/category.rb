class Category < ApplicationRecord
  belongs_to :user
  has_many :purchases, dependent: :destroy

  validates :name, presence: true
  validates :icon, presence: true
  def total_purchases
    purchases.size
  end

  def total_purchases_amount
    purchases.sum(:amount)
  end
end
