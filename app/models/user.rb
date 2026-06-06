class User < ApplicationRecord
  validates :name, presence: true
  validates :DOB, presence: true
  validates :email, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true

  validates :email,
            format: {
              with: URI::MailTo::EMAIL_REGEXP,
              message: "is invalid"
            },
            uniqueness: true
end
