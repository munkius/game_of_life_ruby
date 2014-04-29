# Game of Life

## Stuff you need on your machine
- Ruby (preferably through [rbenv](https://github.com/sstephenson/rbenv)). The required version is listed in the `.ruby-version` file.

## Initial setup (after your very first checkout)

```
$ gem install bundler
$ bundle install

## Running the specs
```
$ rspec
```

## Making changes
1. create a branch (or fork this repo)
1. make sure everything works using `rspec`
1. make your changes (test-first, of course)
1. make sure everything still works using `rspec`
1. send a pull request
1. find someone to review your stuff and to actually pull it in

We make use of merging branches (after which a branch is removed). We do not use rebasing.
