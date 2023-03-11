class Post < ApplicationRecord
  validates :content, length: { minimum: 100 }
  validates :category, presence: true
  validates :title, presence: true

  validate :category_is_fiction_or_nonfiction

  def category_is_fiction_or_nonfiction
    if category.present?
      unless category.include?("Fiction" || "Non-Fiction")
        errors.add(:category, "is not included in the list")
      end
    end
  end

end
