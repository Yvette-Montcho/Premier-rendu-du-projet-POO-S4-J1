# Mon projet POO - Calendrier

## Structure

```bash
mon_projet/
├── lib/
│   ├── event.rb
│   └── user.rb
├── app.rb
└── README.md
```

## Lancer le projet

```bash
ruby app.rb
```

## Contenu

### Classe `User`
- `email` et `age` en `attr_accessor`
- `User.new(email, age)`
- `User.all`
- `User.find_by_email(email)`

### Classe `Event`
- `start_date`, `duration`, `title`, `attendees`
- `postpone_24h`
- `end_date`
- `is_past?`
- `is_future?`
- `is_soon?`
- `to_s`
