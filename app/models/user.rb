class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  enum :role, [:normal_user, :admin, :esteban]

  has_one_attached :image
  has_one_attached :cv
  has_many :postulacions
  has_many :posts, through: :postulacions

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end

