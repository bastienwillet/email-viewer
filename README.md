## Créateur

Bastien Willet

## Synopsis

He ben voila, un beau back-end avec tout plein de tests qui prennent la tête. C'est maman qui va être contente.

## Comment accéder au programme sur Heroku ?

Lien -> [AutoMailer](https://automaileroui.herokuapp.com/)<br />

## Comment accéder au programme en local ?

1. Se positionner sur le dossier avec le terminal
2. Lancer $ bundle install && rails db:create && rails db:migrate && rails db:seed && bundle exec rake assets:precompile && rails server
3. Se rendre sur localhost:3000 avec un navigateur

## Comment accéder aux tests en local ?

1. Se positionner sur le dossier avec le terminal
2. Lancer $ bundle install && rails db:create && rails db:migrate && rails db:seed && bundle exec rake assets:precompile
". Lancer $ rails test

Les tests sont dans test/controllers/emails_controller_test.rb

## Gems ruby utilisées

voir Gemfile
