class Biblioteca < ApplicationRecord
  belongs_to :usuario
  belongs_to :jogo

  delegate :titulo, to: :jogo, prefix: false

  validates :jogo_id, uniqueness: { scope: :usuario_id }
end
