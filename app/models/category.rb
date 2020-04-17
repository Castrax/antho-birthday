class Category < ApplicationRecord
  has_many :nominees, dependent: :destroy
  has_many :answer, dependent: :destroy
  has_one_attached :banner
end
