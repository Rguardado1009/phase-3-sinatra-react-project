class User < ActiveRecord::Base
   belongs_to :team
   has_many :players, through: :teams

end