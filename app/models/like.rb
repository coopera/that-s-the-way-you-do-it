class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :doc

  def self.user_has_liked_this_doc(user, doc)
    Like.where(doc_id: doc, user_id: user).length > 0
  end
end
