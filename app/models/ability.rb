# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?
    can [:read, :create], Article, user: user
  end
end