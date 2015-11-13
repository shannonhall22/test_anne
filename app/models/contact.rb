class Contact < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true,
                    format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :phone, presence: true,
                    length: 10..10,
                    numericality: true
  validates :message, presence: true
end
