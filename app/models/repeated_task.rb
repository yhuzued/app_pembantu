class RepeatedTask < ApplicationRecord
    validates_uniqueness_of :title
end
