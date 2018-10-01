module Destroyable
  extend ActiveSupport::Concern

  def can_delete?
    true
  end

  def destroy
    super if can_delete?
  end

end
