class Project < ApplicationRecord
  validates :title, :tech_stack, presence: true, length: { maximum: 100 }
  validates :description, presence: true, length: { maximum: 500 }
  validates :status, :demo_url, presence: true
  validates :github_url, format: { 
    with: /\Ahttps:\/\/github\.com\/[\w-]+\/[\w-]+\z/, 
    message: "must be a valid GitHub repository URL" 
  }
end
