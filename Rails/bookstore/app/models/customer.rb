class Customer < ApplicationRecord
    validates :email, uniqueness: true, confirmation: {case_sensitive: false}
    validates :email_confirmation, presence: true
    validates :title, absence: true
end
