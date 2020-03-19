class ExperiencePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    return true
  end

  def create?
    return true
  end

  def index?
    true
  end

  def show?
    true
    # scope.where(:id => record.id).exists? # grabbed this from the lecture incase we need it.
  end
end
