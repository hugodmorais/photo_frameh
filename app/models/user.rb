class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :validatable

  # Includes
  # Attributes
  
  # Associations
  has_one :payment
  accepts_nested_attributes_for :payment

  # Delegates

  # Constants

  # Validations

  # Scopes

  # Callbacks

  # Constants Methods

  # Default

  private
end
