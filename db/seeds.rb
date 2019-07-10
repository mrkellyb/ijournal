

User.create!([
  {email: 'john@mail.com', name: 'John', password_digest: 'asdf'},
  {email: 'mary@mail.com', name: 'Mary', password_digest: '43rt'},
])

Session.create!([
  {user_id:1, date:"June 12, 2019", start_notes:"Alto. Using new Berg. JS3 Reeds", stop_notes:"Good session. Fatigue toward end. Work on staying loose."},
  {user_id:1, date:"June 13, 2019", start_notes:"Tenor. Tenney Berg. Trying Vandoren Jazz 2.5 reeds", stop_notes:"Reeds started great, felt dead quickly."},
  {user_id:2, date:"June 12, 2019", start_notes:"Alto. Blue 1", stop_notes:"Good session at the end  of a long day."},
  {user_id:2, date:"June 14, 2019", start_notes:"Alto. Blue 1", stop_notes:"Blue 1 almost played out."},
])

Action.create!([
  {name: "Long tones", session_id:1, time_spent:"00:15", notes:"Working on even timbre through all ranges"},
  {name: "Alone Together", session_id:1, resource:"Oatts transcription", start_tempo:120, time_spent:"00:35"},
  {name: "Garrett solo", session_id:1, resource:"Human Nature transcription", resource_url:"http://www-cs.canisius.edu/~bucheger/transcriptions/garrettparis.pdf", start_tempo:105, stop_tempo:120, time_spent:"00:30"},
  {name: "Long tones", session_id:2, time_spent:"00:20"},
  {name: "All of You", session_id:2, resource:"Learn Jazz Standards", resource_url:"https://www.learnjazzstandards.com/pdf-viewer/?pdf=All_of_You_C_Instruments",start_tempo:120, keys:"Eb major concert", time_spent:"00:20", notes:"Getting there..."},
  {name: "Garrett solo", session_id:2, resource:"Human Nature, p. 2", start_tempo:120, stop_tempo:135, time_spent:"00:15"},
  {name: "Overtones", session_id:3, time_spent:"00:20", notes:"Need to focus on tongue shape and airstream."},
  {name: "Slow ii-V-Is", session_id:3, resource:"iReal", start_tempo:70, keys:"12 keys", time_spent:"00:45"},
  {name: "Cry Me A River lick", session_id:3, start_tempo:140, keys:"12 keys", time_spent:"00:15"},
  {name: "Overtones", session_id:4, time_spent:"00:25"},
  {name: "Sonny transcription (You Don't Know What Love Is)", session_id:4, resource:"Sonny transcription", start_tempo:90, time_spent:"00:15"},
  {name: "Dexter lick", session_id:4, start_tempo:120, stop_tempo:140, keys:"C thru Eb", time_spent:"00:23"},
])

Tag.create!([
  {action_id: 1, name:'tone'},
  {action_id: 2, name:'repertoire'},
  {action_id: 3, name:'vocabulary'},
  {action_id: 4, name:'tone'},
  {action_id: 5, name:'repertoire'},
  {action_id: 6, name:'vocabulary'},
  {action_id: 7, name:'tone'},
  {action_id: 8, name:'vocabulary'},
  {action_id: 9, name:'vocabulary'},
  {action_id: 10, name:'tone'},
  {action_id: 11, name:'vocabulary'},
  {action_id: 12, name:'vocabulary'},
])