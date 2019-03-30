class Jogo < ApplicationRecord
  belongs_to :classificacao
  has_many :bibliotecas_de_usuario, class_name: "Biblioteca"

  validates :titulo, :desenvolvedora, :descricao, :lancamento, presence: true

  scope :por_titulo, lambda { |titulo = nil|
    where(titulo: titulo) if titulo
  }
end
