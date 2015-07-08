class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable 
  enum role: [:user, :admin]
  #after_initialize :set_default_role, :if => :new_record?
  #delegate :can?, :cannot?, :to => :ability
  #before_validation :make_first_user_admin!
  has_many :credits

  def set_default_role
    if User.count == 0
       self.admin = true
    else
       self.user = true
    end
  end
   
  def make_first_user_admin!
    if User.count == 0
       self.admin = true
    end
  end
  
  def ability
    @ability ||= Ability.new(self)
  end
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook, :google_oauth2]
  
  def self.from_omniauth(auth)
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
        user.provider = auth.provider
        user.uid = auth.uid
        user.email = auth.info.email
        user.password = Devise.friendly_token[0,20]
        user.user = true
      end
  end
  
end
