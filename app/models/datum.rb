class Datum < ActiveRecord::Base

  belongs_to :user_account
  has_and_belongs_to_many :drawings

  def json
    content.to_json
  end
end
