class Education < ApplicationRecord
  belongs_to :user
  has_many :education_descriptions

end
