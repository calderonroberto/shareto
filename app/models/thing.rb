class Thing < ActiveRecord::Base
  belongs_to :user
  has_one :loan
end
