json.array! @sessions.each do | session |
  json.partial! "session.json.jbuilder", session: session
  json.actions do
    json.array! session.actions, partial: "api/actions/action", as: :action
  end
end