class Lead < ApplicationRecord
  belongs_to :statuses
  belongs_to :users
end
