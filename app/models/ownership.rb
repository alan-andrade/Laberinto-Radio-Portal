class Ownership < ActiveRecord::Base
  belongs_to :broadcaster
  belongs_to :program

  validates_uniqueness_of :broadcaster_id, :scope=>[:program_id]
end
