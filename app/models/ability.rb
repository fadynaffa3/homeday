# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    return false unless user.present?

    send("#{user.class_name.underscore}_abilities")
  end

  private

  def homeday_user_abilities
    can :read, NpsFeedback
    can :read, Deal
    can :manage, Property
    can :manage, Seller
  end

  def seller_abilities
    can :read, NpsFeedback
  end
end
