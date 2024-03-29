class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :http_authenticatable, :token_authenticatable, :confirmable, :lockable, :timeoutable and :activatable
  devise :registerable, :database_authenticatable, :recoverable,
         :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :role
  
  has_many :contracts  
  has_many :alt_provs 
  
  ROLES = %w[admin moderator author]  

 def role_symbols
    [role.to_sym]
 end

end
