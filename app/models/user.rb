class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  has_and_belongs_to_many :roles

  before_save :set_role

  def set_role
    if self.role_ids.empty?
      self.role_ids = Role.find_or_create_by(name: "user").id
    end
  end

  def admin
    if self.roles.map(&:name).include?("admin")
      return true
    end
  end

end
