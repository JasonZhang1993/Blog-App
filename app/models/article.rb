class Article < ApplicationRecord
  # Associate with Comment model: an article can have many comments
  # use the dependent option of an association to delete all comments if the associated article is deleted
  has_many :comments, dependent: :destroy
  # Active Record Validation: https://guides.rubyonrails.org/active_record_validations.html
  validates :title, presence: true,
                    length: { minimum: 5}
end
