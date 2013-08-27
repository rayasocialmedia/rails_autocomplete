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

## Triggers

When a text field is autocompleted, it triggers an `autocomplete` event, it also passes the data that has been autocompleted, both `id` and `value`

    $("#input").on("autocomplete", function(event, data){
        console.log("Autocompleted id is " + data.id);
        console.log("Autocompleted value is "+ data.value);
    });

## Contributing

Please see CONTRIBUTING.md for details.

##Credits
rails_autocomplete was originally written by Omar Abdel-Wahab.

![RSM](http://rayasocialmedia.com/images/logo.png)

rails_autocomplete is maintained and funded by Raya Social Media.

## License
rails_autocomplete is Copyright © 2013 Raya Social Media. It is free software, and may be redistributed under the terms specified in the LICENSE file.