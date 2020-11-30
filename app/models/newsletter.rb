class Newsletter < ApplicationRecord
    has_one :logo
    has_one :headline
    has_one :body
    has_one :social
end
