class Doc < ActiveRecord::Base
  extend FriendlyId

  friendly_id :title, use: :slugged

  has_many :related_links
  belongs_to :user
  has_many :likes
  has_many :users, through: :users


  accepts_nested_attributes_for :related_links, reject_if: :all_blank, allow_destroy: true

  validates_presence_of :title, :description, :implementation

  validates :title, length: { minimum: 5 }

  acts_as_ordered_taggable

  def has_been_liked_by_this_user(user)
    likes.where(user_id: user).exists?
  end

end
