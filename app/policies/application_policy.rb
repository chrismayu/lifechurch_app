class ApplicationPolicy
  attr_reader :user,  # User performing the action
              :record # Instance upon which action is performed
 
  def initialize(user, record)
    raise Pundit::NotAuthorizedError, "Must be signed in." unless user
    @user   = user
    @record = record
  end
 
  def index?  ; false;                              end
  def show?   ; scope.where(id: record.id).exists?; end
  def new?    ; create?;                            end
  def create? ; false;                              end
  def edit?   ; update?;                            end
  def update? ; false;                              end
  def destroy?; false;                              end
 
  def scope
    Pundit.policy_scope!(user, record.class)
  end
end
