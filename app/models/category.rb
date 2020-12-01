class Category < ApplicationRecord
    validates :name, presence: true, length:{ minimum: 3, maximum:25}
    validates_uniqueness_of :name  #We can either do uniqueness:true or validates_uniqueness_of :name
end