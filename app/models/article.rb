class Article < ApplicationRecord
  # Active Record Validation: https://guides.rubyonrails.org/active_record_validations.html
  validates :title, presence: true,
                    length: { minimum: 5}
end
