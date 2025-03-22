class Post < ApplicationRecord
  belongs_to :user
  validates :url, presence: true
  validates :url, format: { with: URI::DEFAULT_PARSER.make_regexp, message: "is not a valid URL" }
  has_many :comments
end
