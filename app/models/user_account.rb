class UserAccount < ActiveRecord::Base

  # FIXME - lock this instance down with better SSH perms
  before_create do |rec|
    rec.secret = SecureRandom.hex
  end

  validates_presence_of :username
  validates_uniqueness_of :secret

end
