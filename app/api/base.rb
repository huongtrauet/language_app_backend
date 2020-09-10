class Base < Grape::API
  helpers ApplicationHelper

  mount BaseV1
end
