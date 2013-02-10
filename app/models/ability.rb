class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. 
	if user.has_role? :admin
      can :manage, :all
	  can :access, :rails_admin       # only allow admin users to access Rails Admin
      can :dashboard                  # allow access to dashboard
    elsif user.has_role? :director
	  can :access, :rails_admin       # only allow admin users  access Rails Admin
      can :dashboard                  # allow access to dashboard
      can :manage, [Expense, FuelRefill, Job, FuelPayment, User]
	elsif user.has_role? :reception
	  can :access, :rails_admin       # only allow admin users  access Rails Admin
      can :dashboard                  # allow access to dashboard
      can :manage, [Expense, FuelRefill, Job]
	elsif user.has_role? :accountant
	  can :access, :rails_admin       # only allow admin users  access Rails Admin
      can :dashboard                  # allow access to dashboard
      can :read, :all
    end
  end
end
