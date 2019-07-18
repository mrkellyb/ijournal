User.create!([
  {email: "kelly@email.com", name: "kelly", password_digest: "$2a$12$SmChgHtHijdFVvfJB1hgEO2cwIL7ZBBZPK/TQv5ZHPdH5Nmj0KjsW"},
  {email: "newuser@email.com", name: "New User", password_digest: "$2a$12$SOquGmjuQuCXd7zW0hdMGuvqg3Ve32OrMUwo.2efupm.yREnbv0aK"},
  {email: "test@email.com", name: "Test", password_digest: "$2a$12$koSkx4XuRTmEuJUvFr8ejORf0yhM4MU/GEqHv11Rgzqgstm3x5UUi"}
])

Session.create!([
  {user_id: 1, date: "2019-06-12", start_notes: "Alto. Using new Berg. JS3 Reeds", start_time: "2019-06-12 04:00:00", stop_time: "2019-06-12 06:30:00", stop_notes: "Good session. Fatigue toward end. Work on staying loose."},
  {user_id: 2, date: "2019-06-13", start_notes: "Tenor. Tenney Berg. Trying Vandoren Jazz 2.5 reeds", start_time: "2019-06-13 04:00:00", stop_time: "2019-06-13 06:00:00", stop_notes: "Reeds started great, felt dead quickly."},
  {user_id: 3, date: "2019-06-12", start_notes: "Alto. Blue 1", start_time: "2019-06-12 04:00:00", stop_time: "2019-06-12 06:30:00", stop_notes: "Good session at the end of a long day. Blue 1 almost spent?"},
  {user_id: 3, date: "2019-06-14", start_notes: "Alto. Blue 1", start_time: "2019-06-14 04:00:00", stop_time: "2019-06-14 06:00:00", stop_notes: "Blue 1 almost played out."},
  {user_id: 3, date: "2019-07-09", start_notes: "Tenor. Tenney Berg. Prep for 3 Tenors gig.", start_time: "2019-07-09 04:00:00", stop_time: "2019-07-09 06:00:00", stop_notes: "Look over Airmail Express 2nd page again..."},
  {user_id: 3, date: "2019-07-10", start_notes: "Alto, new reeds.", start_time: "2019-07-10 04:00:00", stop_time: "2019-07-10 06:00:00", stop_notes: "Good session, a little fatigue."},
  {user_id: 3, date: "2019-07-11", start_notes: "Alto, Blue 2, Tenney Meyer", start_time: "2019-07-11 04:00:00", stop_time: "2019-07-11 06:00:00", stop_notes: "Need to compare this Meyer to the Philtone."},
  {user_id: 3, date: "2019-07-12", start_notes: "Alto, Blue 3. Philtone", start_time: "2019-07-12 09:00:00", stop_time: "2019-07-12 11:00:00", stop_notes: "Need to compare this Meyer to the Philtone."},
  {user_id: 3, date: "2019-07-13", start_notes: "Alto, reed B3.\nTrying my new Berg.", start_time: "2019-07-13 10:00:00", stop_time: "2019-07-13 13:00:00", stop_notes: "Good session. The Berg is a good piece."},
])

Action.create!([
  {session_id: 1, name: "Long tones", resource: nil, resource_url: nil, start_tempo: nil, stop_tempo: nil, keys: nil, time_spent: "00:15", notes: "Working on even timbre through all ranges"},
  {session_id: 2, name: "Alone Together", resource: "Oatts transcription", resource_url: nil, start_tempo: 120, stop_tempo: nil, keys: nil, time_spent: "00:35", notes: nil},
  {session_id: 3, name: "Garrett solo", resource: "Human Nature transcription", resource_url: "http://www-cs.canisius.edu/~bucheger/transcriptions/garrettparis.pdf", start_tempo: 105, stop_tempo: 120, keys: nil, time_spent: "00:30", notes: nil},
  {session_id: 3, name: "Long tones", resource: nil, resource_url: nil, start_tempo: nil, stop_tempo: nil, keys: nil, time_spent: "00:20", notes: nil},
  {session_id: 3, name: "All of You", resource: "Learn Jazz Standards", resource_url: "https://www.learnjazzstandards.com/pdf-viewer/?pdf=All_of_You_C_Instruments", start_tempo: 120, stop_tempo: nil, keys: "Eb major concert", time_spent: "00:20", notes: "Getting there..."},
  {session_id: 3, name: "Garrett solo", resource: "Human Nature, p. 2", resource_url: nil, start_tempo: 120, stop_tempo: 135, keys: nil, time_spent: "00:15", notes: nil},
  {session_id: 4, name: "Overtones", resource: nil, resource_url: nil, start_tempo: nil, stop_tempo: nil, keys: nil, time_spent: "00:20", notes: "Need to focus on tongue shape and airstream."},
  {session_id: 4, name: "Slow ii-V-Is", resource: "iReal", resource_url: nil, start_tempo: 70, stop_tempo: nil, keys: "12 keys", time_spent: "00:45", notes: nil},
  {session_id: 4, name: "Cry Me A River lick", resource: nil, resource_url: nil, start_tempo: 140, stop_tempo: nil, keys: "12 keys", time_spent: "00:15", notes: nil},
  {session_id: 5, name: "Overtones", resource: nil, resource_url: nil, start_tempo: nil, stop_tempo: nil, keys: nil, time_spent: "00:25", notes: nil},
  {session_id: 5, name: "Dexter lick", resource: nil, resource_url: nil, start_tempo: 120, stop_tempo: 140, keys: "C thru Eb", time_spent: "00:23", notes: nil},
  {session_id: 5, name: "Sonny transcription (You Don't Know What Love Is)", resource: "Printed (in binder)", resource_url: nil, start_tempo: 90, stop_tempo: nil, keys: nil, time_spent: "00:15", notes: nil},
  {session_id: 6, name: "Long tones", resource: nil, resource_url: nil, start_tempo: nil, stop_tempo: nil, keys: nil, time_spent: "20", notes: nil},
  {session_id: 6, name: "Overtones", resource: nil, resource_url: nil, start_tempo: nil, stop_tempo: nil, keys: nil, time_spent: "15", notes: nil},
  {session_id: 6, name: "Will Vinson blues solo", resource: "transcription", resource_url: nil, start_tempo: 100, stop_tempo: 120, keys: "G", time_spent: "35", notes: "Redo"},
  {session_id: 6, name: "Altered scale", resource: nil, resource_url: nil, start_tempo: 80, stop_tempo: nil, keys: "D", time_spent: "15", notes: nil},
  {session_id: 7, name: "Long tones", resource: nil, resource_url: nil, start_tempo: nil, stop_tempo: nil, keys: nil, time_spent: "20", notes: nil},
  {session_id: 7, name: "Overtones", resource: nil, resource_url: nil, start_tempo: nil, stop_tempo: nil, keys: nil, time_spent: "15", notes: "New G# fingering"},
  {session_id: 7, name: "Rollins St. Thomas", resource: "transcription", resource_url: nil, start_tempo: 110, stop_tempo: nil, keys: nil, time_spent: "35", notes: "Memorize"},
  {session_id: 7, name: "Alone Together", resource: "iReal", resource_url: nil, start_tempo: 100, stop_tempo: nil, keys: "B minor", time_spent: "15", notes: nil},
  {session_id: 8, name: "Long tones", resource: nil, resource_url: nil, start_tempo: nil, stop_tempo: nil, keys: nil, time_spent: "00:20", notes: nil},
  {session_id: 8, name: "All of You", resource: "Learn Jazz Standards", resource_url: "https://www.learnjazzstandards.com/pdf-viewer/?pdf=All_of_You_C_Instruments", start_tempo: 120, stop_tempo: nil, keys: "Eb major concert", time_spent: "00:20", notes: "Getting there..."},
  {session_id: 8, name: "Garrett solo", resource: "Human Nature, p. 2", resource_url: nil, start_tempo: 120, stop_tempo: 135, keys: nil, time_spent: "00:15", notes: nil},
  {session_id: 9, name: "Overtones", resource: nil, resource_url: nil, start_tempo: nil, stop_tempo: nil, keys: nil, time_spent: "00:20", notes: "Need to focus on tongue shape and airstream."},
  {session_id: 9, name: "Slow ii-V-Is", resource: "iReal", resource_url: nil, start_tempo: 70, stop_tempo: nil, keys: "12 keys", time_spent: "00:45", notes: nil},
  {session_id: 9, name: "Cry Me A River lick", resource: nil, resource_url: nil, start_tempo: 140, stop_tempo: nil, keys: "12 keys", time_spent: "00:15", notes: nil},
])
Tag.create!([
  {name: "tone"},
  {name: "range"},
  {name: "vocabulary"},
  {name: "improvisation"},
  {name: "speed"},
  {name: "rhythm"},
  {name: "other"},
  {name: "scales"},
  {name: "repertoire"},
  {name: "technique"}
])