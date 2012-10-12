require 'digest/sha1'

class UserAccount < ActiveRecord::Base

  #acts_as_authentic

  EMAIL_REGEX = /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i
  attr_accessible :address, :dateOfBirth, :email, :encrypted_password, :gender, :interests, :name, :phNum, :professionalStatus, :userName

  has_many :comments, :dependent => :destroy
  has_many :posts, :dependent => :destroy

  validates_presence_of :address, :dateOfBirth, :email, :encrypted_password, :gender, :name, :phNum, :userName
  validates_length_of :userName, :within => 6..25
  validates_length_of :encrypted_password, :within => 6..40
  validates_uniqueness_of :userName, :email
  validates_format_of :email, :with => EMAIL_REGEX, :message => "Invalid email"

  def self.authenticate(userName_or_email="", login_password="")
    if EMAIL_REGEX.match(userName_or_email)
      user = UserAccount.find_by_email(userName_or_email)
    else
      user = UserAccount.find_by_userName(userName_or_email)
    end

    if user && user.match_password(login_password)
      return user
    else
      return false
    end
  end

  def match_password(login_password="")
    encrypted_password == Digest::SHA1.hexdigest(login_password)
  end
end

  #before_save :password, :set_admin
  #after_save :clear_password

  #def password
    #@password=pass
   # if @encrypt_password.present?
   #   self.encrypted_password = Digest::SHA1.hexdigest(@encrypt_password)
   # end
  #end

  #def clear_password
 #   self.password = nil
  #end

 # def set_admin
  #  self.admin = false
  #end

