class PostPolicy < ApplicationPolicy

  def update?
    # Case 1 = User of record might need to edit a request for overtime
    # Case 2 = Admin User, needs to edit submitted to approve or reject
    record.user_id == user.id || admin_types.include?(user.type)

    

  end
end