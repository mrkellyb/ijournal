json.partial! @session, partial: 'session', as: :session
json.actions do
  json.array! @session.actions.each do | action |
    json.partial! "api/actions/action", action: action
    json.tags do

      json.array! action.tags, partial: "api/tags/tag", as: :tag
    end
  end

end