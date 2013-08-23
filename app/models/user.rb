class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # attr_accessible :title, :body
  # Setup accessible (or protected) attributes for your model
  # http://stackoverflow.com/questions/10796092/cant-mass-assign-protected-attributes-first-name-last-name-email-password
  attr_accessible :email, :password, :password_confirmation,
                  :first_name, :last_name, :profile_name, :remember_me

  has_many :statuses

  def full_name
    first_name + " " + last_name
  end
end
