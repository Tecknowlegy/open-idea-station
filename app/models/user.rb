class User < ApplicationRecord
  USERNAME_REGEX = /\A[a-zA-Z0-9]+\Z/.freeze
  EMAIL_REGEX = /\A\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,4})\z/i.freeze

  has_secure_password

  validates :username, presence: true, uniqueness: { case_sensitive: false }, \
                       format: USERNAME_REGEX
  validates_presence_of :email, :password_digest
  validates :email, uniqueness: { case_sensitive: false }, format: EMAIL_REGEX

  validates :password, presence: true
  validates :password, confirmation: { case_sensitive: true }

  has_many :ideas, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :notifications, foreign_key: :recipient_id, dependent: :destroy

  def self.find_or_create_from_omniauth(auth)
    case auth.provider
    when "google_oauth2"
      find_params = { provider: auth.provider, uid: auth.uid }
      where(find_params).first_or_initialize.tap do |user|
        user.provider = auth.provider
        user.uid = auth.uid
        user.username = auth.info.first_name unless auth.info.first_name.nil?
        user.email = auth.info.email
        user.password = auth.credentials.token[-15, 15]
        user.picture = auth.info.image
        user.save!
      end
    when "github"
      find_params = { provider: auth.provider, uid: auth.uid }
      where(find_params).first_or_initialize.tap do |user|
        user.provider = auth.provider
        user.uid = auth.uid
        user.username = auth.info.name unless auth.info.name.nil?
        user.email = auth.info.email unless auth.info.email.nil?
        user.password = auth.credentials.token[-15, 15]
        user.picture = auth.extra["raw_info"].avatar_url unless auth.extra["raw_info"].avatar_url.nil?
        user.save!
      end
    end
  end

  # Public: allow application to be able to retrieve #full_name
  # when first_name and last_name exist in model
  def full_name
    %(#{first_name} #{last_name}).titleize if has_attribute?(:first_name) && has_attribute?(:last_name)
  end

  def bio
    read_attribute(:bio) || "Bio is yet to be updated"
  end
end
