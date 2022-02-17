class Blog < ApplicationRecord
    #mount_uploader :photo, PhotoUploader
    #has_rich_text :body
    belongs_to :user
end
