class Ability
  include CanCan::Ability

  def initialize(user)

    if user.admin?  # additional permissions for administrators
        can [:read, :update, :create], [Customer, Stock, Product, Provider, User, Purchase]

    	elsif user.present?  # additional permissions for logged in users (they can read their own posts)
      		can [:read, :update, :create], [Customer, Stock, Product, Purchase]
    end
  end


end


