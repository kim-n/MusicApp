require 'bcrypt'

class User < ActiveRecord::Base
  attr_accessible :email, :password

  validates :email, :password_digest, :session_token, :presence => true

  before_validation :ensure_session_token

  def ensure_session_token
    self.session_token ||= User.generate_session_token
  end

  def self.generate_session_token
    SecureRandom.base64(16)
  end

  def self.find_by_credentials(email, secret)
    user = User.find_by_email(email)
    return if user.nil?
    BCrypt::Password.new(user.password_digest).is_password?(secret) ? user : nil

  end

  def reset_session_token!
    self.session_token = User.generate_session_token
    self.save!
  end

  def password=(secret)
    self.password_digest = BCrypt::Password.create(secret) unless secret.blank?
  end

  def is_password?(secret)
    self.password_digest.is_password?(secret)
  end



end
