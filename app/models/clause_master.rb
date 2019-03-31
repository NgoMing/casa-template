class ClauseMaster < ApplicationRecord
  validates :name, :content, :note, presence: true
end
