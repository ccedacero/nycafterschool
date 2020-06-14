class User < ApplicationRecord
    has_many :enrollments 
    has_many :programs, through: :enrollments
end
