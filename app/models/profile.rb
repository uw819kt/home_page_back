class Profile < ApplicationRecord
  validates :name, presence: true, length: { maximum: 20 }
  validates :description, presence: true, length: { maximum: 1000 }
  validates :github_url, presence: true, format: {
    with: /\Ahttps:\/\/github\.com\/\w+\z/,
    message: "must be a valid GitHub URL"
  }
end
