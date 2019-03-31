class ClauseMaster < ApplicationRecord

  validates_presence_of :name, :content, :note
end
