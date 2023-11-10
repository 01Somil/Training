class Book < ApplicationRecord
  belongs_to :author
  belongs_to :supplier
  validates :year_published, comparison: {greater_than: 2015}
  validates_associated :authors
  validates_associated :suppliers
end
