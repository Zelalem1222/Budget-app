class Category < ApplicationRecord
    belongs_to :user
    has_many :purchases , dependent: :destroy
end
