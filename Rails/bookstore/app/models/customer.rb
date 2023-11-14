class MyValidator<ActiveModel::Validator
  def validate(record)
    unless record.first_name.start_with?'X'
      record.errors.add :first_name, "Provide a valid name!!"
    end
  end
end

class Customer < ApplicationRecord
  validates :first_name, length: { maximum: 20 }, allow_blank: false, on: :create
  validates :email, uniqueness: true, confirmation: { case_sensitive: false }
  validates :email_confirmation, presence: { strict: true }
  validates :title, presence: true
  validates_with MyValidator
end
