class Author < ApplicationRecord
    validates :first_name, acceptance: true, length: {maximum: 10}
    validates :last_name, acceptance: true, length: {maximum: 10}
    validates :title, acceptance: true, length: {in: 5..20}
    #validates :terms_of_service, acceptance: true
end
