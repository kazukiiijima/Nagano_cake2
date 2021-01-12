class Order < ApplicationRecord

enum payment_method: { クレジットカード: 1, 銀行振込: 2 }

end
