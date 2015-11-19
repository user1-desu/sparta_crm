class Customer < ActiveRecord::Base
  def full_name(sama)
    full_name = family_name + given_name + sama
    return full_name
  end
  belongs_to :company
  has_many :comments
  validates :family_name, presence: true, length: { maximum: 20 }
  validates :given_name,  presence: true, length: { maximum: 20 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email,       presence: true, format: { with: VALID_EMAIL_REGEX }
  validates :company_id, presence: true
end
