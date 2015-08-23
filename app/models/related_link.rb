class RelatedLink < ActiveRecord::Base
  belongs_to :doc

  validates_presence_of :link, :title
end
