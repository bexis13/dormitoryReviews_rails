class Dormitory < ApplicationRecord
    has_many :reviews

    before_create :doSlugging

    def doSlugging
        self.slug = name.parameterize
    end

    def average_score
        reviews.average(:score).round(2).to_f
end
