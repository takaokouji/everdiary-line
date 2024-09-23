class MyLineUser < ApplicationRecord
  devise :omniauthable, omniauth_providers: %i[line]

  belongs_to :user
end
