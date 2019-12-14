# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    return false unless user.present?

    @user = user
    send("#{user.class_name.underscore}_abilities")
  end

  private

  def homeday_user_abilities
    can :read, NpsFeedback
    can :read, Deal
    can :read, Property
    can :read, Seller
    can :read, Realtor
  end

  def seller_abilities
    can :manage, Property, owner_id: @user.id
    can :read, NpsFeedback, respondent_class: 'Realtor', respondent_id: @user.id
    can %i[create update read], Deal, property_id: @user.properties.ids
  end

  def realtor_abilities
    can %i[update read], Deal, realtor_id: @user.id
  end
end
