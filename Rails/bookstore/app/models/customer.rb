class Customer < ApplicationRecord
    validates :email, confirmation: {case_sensitive: false}
    validates :email_confirmation, presence: true
end
