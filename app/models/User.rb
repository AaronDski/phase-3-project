class User < ActiveRecord::Base
    has_many :carts
    has_many :parts, through: :carts
end