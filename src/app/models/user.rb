# frozen_string_literal: true

#   Class: User
#
#   Functions:
#     login?(email, password)
#     from_email(email)
#     register(email, password, type)
#     delete_account()
#     set_email(new_email)
#     set_password(new_password)

class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  before_save { self.email = email.downcase }
  after_create :new_user

  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  validates :password, presence: true, length: { minimum: 6 }
  has_one :organization, dependent: :destroy

  # FIXME: Broken association
  # Fix assigned to @EthanZeigler
  #
  # Temp through function
  # has_one :organization, dependent: :nullify
  belongs_to :tag, optional: true

  has_many :favorite_opportunities, dependent: :destroy
  # has_many :opportunties, through: :favorite_opportunities

  has_many :favorite_organizations, dependent: :destroy
  # has_many :organizations, through: :favorite_organizations

  def favorite_opportunities
    puts("#############################################\n\n\n\n\n")
    puts("Please do not use favorite_opportunities. It's a temporary bandaid")
    puts("\n\n\n\n\n###########################################")
    self[:favorite_opportunities]
  end

  def favorite_organizations
    puts("#############################################\n\n\n\n\n")
    puts("Please do not use favorite_organizations. It's a temporary bandaid")
    puts("\n\n\n\n\n###########################################")
    self[:favorite_organizations]
  end

  def favorited_opportunities
    FavoriteOpportunity.where(user: self).map(&:opportunity)
  end

  def favorited_organizations
    FavoriteOrganization.where(user: self).map(&:organization)
  end

  def org?
    !organization.nil?
  end

  def approved_org?
    !organization.nil? && organization.approved?
  end

  def invalid_org?
    !organization.nil? && !organization.approved?
  end

  # andradl2
  def new_user
    # if user_signed_in?
      UserMailer.new_user(self).deliver
    # end
  end
end
