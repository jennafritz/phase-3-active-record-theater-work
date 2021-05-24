r1 = Role.create(character_name: "character_one")

a1 = Audition.create(actor: "actor_one", location: "location_one", hired: false, role_id: r1.id)

a2 = Audition.create(actor: "actor_two", location: "location_two", hired: false, role_id: r1.id)

a3 = Audition.create(actor: "actor_three", location: "location_three", hired: false, role_id: r1.id)
