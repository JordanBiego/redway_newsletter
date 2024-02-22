class Lead < ApplicationRecord
  validates_uniqueness_of :email, uniqueness: { scope: :email, message: 'Email já cadastrado!' }
end
