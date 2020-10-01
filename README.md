
![](https://img.shields.io/badge/Microverse-blueviolet)

# Microverse School > Rails > #6 Associations

In this project we built a site similar to a private Eventbrite which allows users to create events and then manage user signups. Users can create events and join other events. Events take place at a specific date and at a location (which you can just store as a string, like “Andy’s House”).

A user can create events. A user can attend many events. An event can be attended by many users. This will require many-to-many relationships and also to be very conscious about your foreign keys and class names.

- [x] Miltestone 1 - User model, view, controller setup and basic sign in
- [x] Miltestone 2 - Event model, view, controller setup
- [x] Miltestone 3 - Attendance model, view, controller setup
- [x] Miltestone 4 - The associations between Event and User model over middle table


## Built With
- Ruby on Rails
- ActiveRecords

## Linters
- Rubocop
- Stylelint

## Getting Started

To get a local copy up and running follow these simple example steps.

### Install
In order to run, you need to install RUBY and Rails in your computer. For windows you can go to [Ruby installer](https://rubyinstaller.org/) and for MAC and LINUX you can go to [Ruby official site](https://www.ruby-lang.org/en/downloads/) for intructions on how to intall it.

Then you can clone the project by typing ```https://github.com/RaminMammadzada/rails-private-events.git```

### Run app
- Type ```bundle install``` in the root file of the project.
- Type  ```rails db:migrate``` in the root file of the project. 
- Type ```rails s``` in the root file of the project.
- You can go to rails console by typing ```rails console``` and create Member by using Active Record commands and methods.

## Authors

👤 **Ramin Mammadzada**

- Github: [@RaminMammadzada](https://github.com/RaminMammadzada)
- Twitter: [@RaminMammadzada](https://twitter.com/RaminMammadzada)
- Linkedin: [@RaminMammadzada](https://www.linkedin.com/in/raminmammadzada) 

👤 **Jurgen Clausen Gutierrez**

- Github: [@jurgen1c](https://github.com/jurgen1c)
- LinkedIn: [jurgen-clausen](https://www.linkedin.com/in/jurgen-clausen-2740061a9/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- [Microverse](https://www.microverse.org/)
- [The Odin Project](https://www.theodinproject.com/courses/rails/lessons/forms)
- [jumpstartLab](http://tutorials.jumpstartlab.com/projects/blogger.html)


## 📝 License

This project is [MIT](lic.url) licensed.