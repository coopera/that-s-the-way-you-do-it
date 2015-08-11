class Doc < ActiveRecord::Base
  validates_presence_of :title, :description, :implementation
end
