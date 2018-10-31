class Forumpost < ApplicationRecord
  belongs_to :thread
  belongs_to :user
  belongs_to :parent
end
