class Ability
  include CanCan::Ability

  protected

  def initialize(user)
    user ||= User.new
    can :read, :all
    can :create, :all

    return unless user.present?

    can :manage, User, id: user.id
    can :manage, Category, user_id: user.id
    can :manage, Purchase, user_id: user.id
  end
end
