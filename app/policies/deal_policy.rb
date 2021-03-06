class DealPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    true
  end

  def create?
    record.offer.user != user
  end

  def approve?
    record.offer.user == user
  end

  def deny?
    record.offer.user == user
  end
end
