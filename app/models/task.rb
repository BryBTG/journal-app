class Task < ApplicationRecord
  validates :category_id, :title, :body, :deadline,  presence: true
  belongs_to :category
end
