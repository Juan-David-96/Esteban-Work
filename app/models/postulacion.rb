class Postulacion < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :fecha_postulacion, presence: true
  validates :user_id, uniqueness: { scope: :post_id, message: "Ya se ha postulado a esta oferta." }
end
