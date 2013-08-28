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

  #validates :first_name, presence: true
  #validates :last_name, presence: true
  #validates :profile_name, presence: true, uniqueness: true,
  #          format: { with: /a-zA-Z-0-9_-/,
  #                    message: 'Must be formatted correctly.'
  #}

  has_many :statuses

  def full_name
    first_name + " " + last_name
  end
end
