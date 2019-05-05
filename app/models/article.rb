class Article < ApplicationRecord
  # Associate with Comment model: an article can have many comments
  has_many :comments
  # Active Record Validation: https://guides.rubyonrails.org/active_record_validations.html
  validates :title, presence: true,
                    length: { minimum: 5}
end
