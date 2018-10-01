class User < ApplicationRecord
  authenticates_with_sorcery!

  enum role: ROLES = [SUPERADMIN = 'superadmin', ADMIN = 'admin', MEMBER = 'member']
end
