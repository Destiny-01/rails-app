class Blog < ApplicationRecord
    acts_as_votable
    has_many :comments, dependent: :destroy
    belongs_to :user
end
