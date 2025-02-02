class Postulacion < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :fecha_postulacion, presence: true
  validate :unique_application

  def unique_application
    if Postulacion.exists?(user_id: user_id, post_id: post_id)
      errors.add(:base, "Ya te has postulado a esta oferta.")
    end
  end

end
