class Author < ApplicationRecord
    validates :first_name, acceptance: true, length: {maximum: 10}
    validates :last_name, acceptance: true, length: {maximum: 10}
    validates :title, acceptance: true, length: {in: 5..20}
    validate :first_name_length, :last_name_length

    def first_name_length
        if first_name.present? && first_name.length<2
            errors.add(:first_name,"First name cannot be less than 2")
        end
    end

    def last_name_length
        if last_name.present? && last_name.length<2
            errors.add(:last_name,"Last name cannot be less than 2")
        end
    end
    
end
