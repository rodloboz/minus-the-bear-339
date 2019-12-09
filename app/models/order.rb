class Order < ApplicationRecord
  belongs_to :user
  belongs_to :teddy

  monetize :amount_cents

 #                  0     1      2
  enum state: %i[pending paid cancelled]
end
