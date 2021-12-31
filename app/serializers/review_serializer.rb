class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :score, :dormitory_id
end
