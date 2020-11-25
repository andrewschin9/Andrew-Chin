class CartedProduct < ApplicationRecord
has_many :products
has_many :users
belongs_to :order, optional: true

end
