# Context

Evil Corp is a growing company, and has a lovely office in Amsterdam.
As teams are expanding, we sometimes want to use the same meeting rooms for different teams.
In this phase of our transformation into a big evil corporate, we now need a meeting rooms booking application.

# Goal
We want you to implement the following:

users_controller.rb

- Implement the create method that creates a User, only if the signup is an @evil-corp.com email address

booking.rb

- Implement the method overlaps_existing_booking? that returns true if the booking overlaps another booking

bookings_controller.rb

- Implement the create method that creates a Booking only if it does not overlap with an existing booking

- Change the index action to not just show a list of bookings but grouped by day in a data structure with the date as key and and array of the bookings on that date as values. Make changes to seeds.rb to generate more bookings in order to test your implementation.

## Questions

This is based off of an old assesment project we used to use.
You can use Postman to test the implementation of your create methods. However using postman is not part of the assesment so if you have trouble setting this up, let me know.
It is also very well possible that you run into issues with this project that are our fault and not yours, so if anything doesn't work as expected, let me know!

Please contact us if you have any questions. There is no right or wrong question and we rather help you than have you get stuck for hours. Feel free to contact Martijn: martijn@smartspotter.com

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Installing Ruby (with [rbenv](https://github.com/sstephenson/rbenv))

Run this command, this might take **a few minutes**

```
rbenv install 3.0.3
```

Once the ruby installation is done, run this command to tell the system
to use the 3.0.3 version by default.

```
rbenv global 3.0.3
```

### Installing SQLite


```
brew install sqlite3
```

### Installing Rails

Run the following command to install Rails version 7.0.3

```
gem install rails -v 7.0.3
```

### Setup Project

Clone git repository using the following command:

```
git clone https://github.com/SmartSpotter/SmartSpotter-Assessment.git
cd SmartSpotter-Assessment
```

Install all dependencies.

```
bundle install
```

Create db and migrate schema.

```
rails db:create
rails db:migrate
rails db:seed
```

Now run the application.

```
rails s
```

Check if all is well by hitting http://localhost:3000/bookings in your browser.
