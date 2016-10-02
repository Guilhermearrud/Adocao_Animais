class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         mount_uploader :avatar, AvatarUploader #essa parte é o da foto

  #AQUI ESTAMOS COLOCANDO AQUELES CAMPOS QUE SAO OBRIGATORIOS
  validates :name, presence: true
  validates :login, presence: true
  validates :avatar, presence: true
  validates :numberphone, format: { with: /\d{5}-\d{4}/, message: "bad format" }
end

