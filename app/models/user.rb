class User < ApplicationRecord
    has_many :twitter_accounts

    has_secure_password
    validates :email, presence: true, format: { with: /@/ , message: "must be a valid email address" }
end
