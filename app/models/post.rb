class Post < ApplicationRecord
    validates :title, :description, presence: true
    validates :description, length: { minimum: 5 }

    before_save do
        self.title = self.title + " Luiz"
    end
end
