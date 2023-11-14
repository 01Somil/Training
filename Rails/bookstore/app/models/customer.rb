class Customer < ApplicationRecord
    validates :first_name, length: {maximum: 20}, allow_blank: false, on: :create
    validates :email, uniqueness: true, confirmation: {case_sensitive: false}
    validates :email_confirmation, presence: {strict: true}
    validates :title, absence: true
end
