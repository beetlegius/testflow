class Ability
  include CanCan::Ability

  def initialize(user)

    user ||= User.new

    case user.role
    when User::SUPERADMIN
      # can do anything
      can :manage, :all
    when User::ADMIN
      can :manage, Category
      can :manage, Product
    when User::MEMBER
      # can't do anything
    end
  end
end
