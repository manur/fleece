class Drawing < ActiveRecord::Base
  has_and_belongs_to_many :data

end
