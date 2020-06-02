# Series Reviews

 > A different way to share and read TV series reviews, built on Ruby on Rails.

![screenshot](https://user-images.githubusercontent.com/15898299/83561122-b0490000-a4ed-11ea-8266-575c12566bd3.png)

Series-Reviews offers you a new way to share your reviews about TV series, and read other users'. It provides a simple interface where the reviews are grouped into categories, and can be voted by other users.
It is created to be used as a desktop app, so there may be design issues on mobile version.

## Features

- Sign up and login with a username (no password required)
- Create, edit and delete reviews
- Vote for reviews
- Featured review (most voted) on cover
- Categories with most recent review as cover.

## Built With

- Ruby (version 2.6.5)
- Ruby on Rails (version 5.2.4)
- Rspec and FactoryBot for testing
- Postgres as database
- HTML5, CSS3 and Javascript in frontend
- Bootstrap for styling
- Slick for carousel
- Simple Form for forms
- Rubocop as linter

## Live Demo

[Series-Reviews](http://series-reviews.herokuapp.com/)

## Entity Relationship Diagram

![erd](https://user-images.githubusercontent.com/15898299/83570539-99f67080-a4fc-11ea-9068-d05519d5d64e.png)

*Automatically generated entity-relationship diagram (ERD) for models, using gem [rails-erd](https://github.com/voormedia/rails-erd). The generated pdf file can be found [here](/docs/erd.pdf).*


## Getting Started

### Prerequisites

- Ruby (version 2.6.5) - To install it, check the [official page](https://www.ruby-lang.org/en/documentation/installation/).
- Rails (version 5.2.4) - Check [this page](https://www.theodinproject.com/courses/ruby-on-rails/lessons/your-first-rails-application-ruby-on-rails) for more info.
- Postgres (version >= 9.5) - More information on the [official page](https://www.postgresql.org/docs/9.3/tutorial-install.html)

### Setup

Inside the terminal:
- Clone this repository: ` git clone https://github.com/flpfar/series-reviews.git `
- Navigate to the project folder: ` cd series-reviews `
- Run the following commands:
```
$ bundle install
$ rails db:migrate
$ rails server
```

### Usage

Open a web browser and type ` http://localhost:3000/ ` on the address bar.

### Run tests

This project uses RSpec for unit testing. In order to run the tests, type `rspec` inside the terminal.

### Generate ERD

To regenerate the ERD pdf file for this project, run ` bundle exec erd --attributes=foreign_keys,timestamps,content ` in the terminal.

## Future improvements

- Calculate the priority of categories by their number of reviews.
- Responsive layout.
- Admin interface to handle categories.
- Login with password.

## Authors

👤 **Felipe Augusto Rosa**

- Github: [@flpfar](https://github.com/flpfar)
- Twitter: [@flpfar](https://twitter.com/flpfar)
- Linkedin: [Felipe Augusto Rosa](https://www.linkedin.com/in/felipe-augusto-rosa/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!. Feel free to check the [issues page](https://github.com/flpfar/series-reviews/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments
- The specifications and requirements for this project can be found [here](https://www.notion.so/Lifestyle-articles-b82a5f10122b4cec924cd5d4a6cf7561).
- This project design was based on [liFEsTlye](https://www.behance.net/gallery/14554909/liFEsTlye-Mobile-version) website concept by [Nelson Sakwa](https://www.behance.net/sakwadesignstudio).

## 📝 License

This project is [MIT](LICENSE.txt) licensed.