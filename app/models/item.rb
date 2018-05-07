class Item < ActiveRecord::Base
	validates :name, presence: true, length: {minimum: 3, maxiumum: 50}
	validates :sku, presence: true, length: {minimum: 10, maxiumum: 10}
	validates :active, presence: true
end 