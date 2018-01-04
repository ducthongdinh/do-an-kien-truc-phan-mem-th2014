class ServiceRegister < ApplicationRecord
    has_one :services
    has_one :users
end
