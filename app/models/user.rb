class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :rememberable, :recoverable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :trackable, :validatable
  has_many :orders, -> { order('created_at DESC') }
end
