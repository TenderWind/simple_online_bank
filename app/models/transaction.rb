class Transaction < ApplicationRecord
  belongs_to :operation
  belongs_to :account
end
