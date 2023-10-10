class User < ApplicationRecord
  validates :name, presence: true
  # validação do email: formato aceito : conter o @, e pelomenos 1 caracter antes dele
  validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/ }
  # validação do cpf : formato aceito : 11 numeros
  validates :cpf, presence: true, uniqueness: true, format: { with: /\A\d{11}\z/ }
  # Validação do telefone: formato aceito (xx)xxxxx-xxxx
  validates :phone, presence: true, format: { with: /\A\(\d{2}\)\d{5}-\d{4}\z/ }

  # lembrando que tambem o usuario nao pode ser criado com algum atributo repetido ,exemplo o email e cpf nao podem ser iguais a de outros usuarios
end