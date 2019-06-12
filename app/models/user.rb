class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :rememberable

  validates :username, uniqueness: true, presence: true

  has_many :room_messages, dependent: :destroy

  before_create :set_email

  def set_email
    self.email = "noemail#{self.class.count+1}@codeboxx.biz"
  end

  def gravatar_url
    gravatar_id = Digest::MD5::hexdigest(email).downcase
    "https://gravatar.com/avatar/#{gravatar_id}.png"
  end
end
