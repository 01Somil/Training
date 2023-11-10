class Author < ApplicationRecord
    validates :first_name, acceptance: true
    validates :last_name, acceptance: true
    validates :title, acceptance: true
    #validates :terms_of_service, acceptance: true
end
