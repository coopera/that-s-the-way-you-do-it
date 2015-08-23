class Doc < ActiveRecord::Base
  validates_presence_of :title, :description, :implementation

  validates :title, length: { minimum: 5 }

  acts_as_ordered_taggable
end
