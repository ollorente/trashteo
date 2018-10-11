class User < ApplicationRecord
  belongs_to :type_user
  belongs_to :town
end
