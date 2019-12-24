# Product Manager

## Install

### Clone the repository

```shell
git clone git@github.com:jaxxreal/product_manager.git
cd product_manager
```

### Check your Ruby version

```shell
ruby -v
```

The ouput should start with something like `ruby 2.6.3`

If not, install the right ruby version using [rbenv](https://github.com/rbenv/rbenv) (it could take a while):

```shell
rbenv install ruby 2.6.3
```

### Install dependencies

Using [Bundler](https://github.com/bundler/bundler) and [Yarn](https://github.com/yarnpkg/yarn):

```shell
yarn
```

### Initialize the database

```shell
rails db:migrate RAILS_ENV=development
```

## Serve

```shell
rails s
```
