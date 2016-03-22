class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # the following line is to avoid an ugly server exception to be thrown, and present the user with the standard devise error
  validates :username , uniqueness: {case_sensitive: false}

  has_many :places
  has_many :comments


# hypothetical situation if something other than username is to be displayed
# display_name
  #if username.present?
  # username || anonymous
# end
end
