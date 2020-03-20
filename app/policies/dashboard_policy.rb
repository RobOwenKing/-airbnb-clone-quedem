class DashboardPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def mybookings?
    return true if user
  end

  def myexperiences?
    return true if user
  end
end
