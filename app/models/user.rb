class User
  include Mongoid::Document
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :rpx_connectable

  attr_accessor :email, :passward, :passward_confirmation, :remember_me

  field :rpx_identifier
end
