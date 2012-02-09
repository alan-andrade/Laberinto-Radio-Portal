class Ownership < ActiveRecord::Base
  belongs_to :presenter
  belongs_to :program
end
