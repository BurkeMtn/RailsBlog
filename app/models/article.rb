class Article < ApplicationRecord
    include Visible

    has_many :comments, dependent: :destroy

    # Validations is a built in Rails features
    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
end
