require "digest"

class Sound < ActiveRecord::Base
  belongs_to :user

  # filling user_id from User.current_user with sentient_user plugin
  before_create { |record| record.user = User.current }
  
  
  validates_presence_of :name
  validates_attachment_presence :sound
  validates_attachment_content_type :sound, :content_type => [ 'application/mp3', 'application/x-mp3', 'audio/mpeg', 'audio/mp3' ]
  validates_attachment_size :sound, :less_than => 20.megabytes
  
  Paperclip.interpolates :md5 do |attachment, style|
    Digest::MD5.hexdigest(attachment.instance.id.to_s) 
  end       

  has_attached_file :sound,
    :url => '/system/sounds/:md5.:extension',
    :path => ':rails_root/public/system/sounds/:md5.:extension'
end
