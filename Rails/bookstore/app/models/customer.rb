class Customer < ApplicationRecord
    validates :first_name, length: {maximum: 20}, allow_blank: true
    validates :email, uniqueness: true, confirmation: {case_sensitive: false}
    validates :email_confirmation, presence: true
    validates :title, absence: true
end
