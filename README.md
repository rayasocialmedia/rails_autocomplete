[![Build Status](https://travis-ci.org/rayasocialmedia/rails_autocomplete.png?branch=master)](https://travis-ci.org/rayasocialmedia/rails_autocomplete)
[![Coverage Status](https://coveralls.io/repos/rayasocialmedia/rails_autocomplete/badge.png?branch=master)](https://coveralls.io/r/rayasocialmedia/rails_autocomplete)


# RailsAutocomplete

A hassle-free autocomplete for Rails 3.2 using Twitter bootstrap.

## Installation

Add this line to your application's Gemfile:

    gem 'rails_autocomplete'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rails_autocomplete

Then you need to add the following line to your application.js:

    //= require rails_autocomplete

## Usage

Assuming you have a Post model where you want to autocomplete posts based on their title field:


Add the following to app/views/posts/_form.html.erb:

    <%= f.autocomplete_field :post, autocomplete_posts_path %>

app/controllers/posts_controller.rb:

    def autocomplete
      @posts = Post.autocomplete(:name, params[:q])
      respond_to do |format|
        format.json { render json: @posts }
      end
    end

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
