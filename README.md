# BackupMethod

BackupMethod is an application for pulling backups from distributed sources and storing them in a central place.

## Developing

Install Ruby 2.1.0 using rbenv:

```
brew update
brew upgrade ruby-build
rbenv install 2.1.0
```

Make sure your terminal PATH includes ./bin by adding this line to your `~/.bash_profile` to make binstubs work. Binstubs makes your commands fast.

```
export PATH=bin:$PATH
```

Copy the secrets file:

```
cp config/secrets.yml.sample config/secrets.yml
```

Create the MySQL databases:

```
rake db:create:all
```

Run the tests:

```
rake test
```

Start your development server:

```
rails s
```

Happy hacking!