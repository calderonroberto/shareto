class Thing < ActiveRecord::Base
  belongs_to :user
  has_one :loan

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png", :storage => :dropbox, :dropbox_credentials => {app_key: Figaro.env.dropbox_app_key, app_secret: Figaro.env.dropbox_app_secret, access_token: Figaro.env.dropbox_access_token, access_token_secret: Figaro.env.dropbox_access_token_secret, user_id: Figaro.env.dropbox_user_id}, :dropbox_options => {path: proc { |style| "sharetoimages/#{id}/#{style}/:filename" } }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
