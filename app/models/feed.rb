class Feed < ApplicationRecord
    def self.ransackable_attributes(auth_object = nil)
        ["author", "content", "created_at", "id", "id_value", "img_url", "title", "updated_at"]
    end
end
