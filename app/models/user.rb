class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
      has_many :web_portfolios
      has_many :ml_portfolios
      has_many :career_details
      has_many :blogs
      has_many :comments, dependent: :destroy
      
         enum role: [:user, :admin]
         after_initialize :set_default_role, :if => :new_record?

         def set_default_role
           self.role ||=:user
          end


          def comment_created
            self.number_of_comments = number_of_comments + 1
            save
            number_of_comments
          end
     end
