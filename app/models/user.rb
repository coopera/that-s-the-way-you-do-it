class User < ActiveRecord::Base

  has_many :docs
  has_many :likes

  has_many :docs_liked, through: :likes, source: :docs

  def self.create_from_omniauth(auth_hash)
    self.create(provider: auth_hash[:provider],
                uid: auth_hash[:uid],
                name: auth_hash[:info][:name],
                email: auth_hash[:info][:email],
                avatar: auth_hash[:info][:image],
                token: auth_hash[:credentials][:token],
                nickname: auth_hash[:info][:nickname]
               )
  end

  def has_liked_this_doc(doc)
    likes.where(doc_id: doc).exists?
  end

end
