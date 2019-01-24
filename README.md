An example app displaying the usage of [Sorcery](https://github.com/Sorcery/sorcery).

Files of interest:

- `app/controllers/*`
- `app/mailers/user_mailer.rb`
- `app/models/user.rb`
- `app/views/*`
- `config/initializers/sorcery.rb`
- `db/migrate/*`

## Development Environment – Docker

Run `docker-compose up` to start the container. 

Use `docker exec sorcery_example <command>` to run a shell command.  
For example:  
`docker exec sorcery_example rake db:migrate`  
`docker exec sorcery_example bundle install`
