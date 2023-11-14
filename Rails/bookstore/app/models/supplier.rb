class Supplier < ApplicationRecord
    validates :name, format: {with: /\A[a-zA-Z]+\z/, message: "only allows letters"}, allow_nil: false
    validates :name, inclusion: {in: %w(John Paul David), message: "%{value} is not a valid name"}
end
