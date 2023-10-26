class User < ApplicationRecord
    # Assosiations

    # Attributes
    attribute :name, :text
    
    # Validations
    validate :name, presence: true, length: {maximum: 255}
end
