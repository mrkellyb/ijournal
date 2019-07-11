json.array! @sessions.each do | session |
  json.partial! "session.json.jbuilder", session: session
  json.actions do
    json.array! session.actions.each do | action |
      json.partial! "api/actions/action", action: action

      json.tags do
        json.array! action.tags, partial: "api/tags/tag", as: :tag
      end

    end
  end

end