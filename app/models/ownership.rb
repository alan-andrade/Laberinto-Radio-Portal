class Ownership < ActiveRecord::Base
  belongs_to :broadcaster
  belongs_to :program
end
