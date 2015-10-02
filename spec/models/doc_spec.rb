require 'rails_helper'

describe Doc do

  it { should have_many :related_links }
  it { should belong_to :user }

  it { should validate_presence_of :title }
  it { should validate_presence_of :description }
  it { should validate_presence_of :implementation }

end
