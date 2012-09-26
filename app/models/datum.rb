require 'json'
class Datum < ActiveRecord::Base

  belongs_to :user_account
  has_and_belongs_to_many :drawings

  validates :content, :presence => true
  validate :content_is_json?

  def content_is_json?
    begin
      JSON.parse(self.content || '')
    rescue JSON::ParserError
      self.errors.add(:content, "is not valid JSON")
    end
  end

  def to_json
    content.to_json
  end
end
