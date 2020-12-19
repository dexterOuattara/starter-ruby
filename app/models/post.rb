class Post < ApplicationRecord
    belongs_to :user
    belongs_to :category
    has_one_attached :image

    def self.search(keywords)
        if keywords.blank?
            self
        else
            self.where('Title Like ?' , "%#{keywords}%")
        end

    end
end
