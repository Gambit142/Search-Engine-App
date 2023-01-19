# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?
    can [:read, :list], Article, user: user
    can [:read, :create], Query, user: user
  end
end
