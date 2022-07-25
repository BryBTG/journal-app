class Category < ApplicationRecord
  # validates :name, :description, presence: true, uniqueness: true
  has_many :tasks, :dependent => :destroy
  belongs_to :user
end
