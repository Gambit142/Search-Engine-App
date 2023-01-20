<a name="readme-top"></a>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [Deployment](#triangular_flag_on_post-deployment)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ](#faq)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 SEARCH ENGINE <a name="about-project"></a>


**SEARCH ENGINE** is a realtime search box, where users search articles, and have analytics that display what users were searching for. 


## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

> Mainly Ruby on Rails with StimulusJS and turbo frame.

<details>
  <summary>Framework/Libraries</summary>
  <ul>
    <li><a href="https://stimulus.hotwired.dev/">StimuusJS</a></li>
    <li><a href="#">Turbo Frame</a></li>
    <li><a href="https://tailwindcss.com/">Tail Wind CSS</a></li>
    <li><a href="https://github.com/heartcombo/devise">Devise</a></li>
    <li><a href="https://github.com/CanCanCommunity/cancancan">CanCanCan</a></li>
  </ul>
</details>

<details>
  <summary>Bundler</summary>
  <ul>
    <li><a href="https://guides.rubyonrails.org/webpacker.html">Webpack</a></li>
    <li><a href="#">JS Bundling Gem</a></li>
  </ul>
</details>

<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://html.com/">HTML</a></li>
    <li><a href="https://www.w3.org/Style/CSS/Overview.en.html">CSS</a></li>
  </ul>
</details>

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="#">Ruby on Rails' WEBrick</a></li>
    <li><a href="#">Ruby on Rails' Puma</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

> Describes features of the application.

- **It records input in real time**
- **It displays analytics & trends of what you search for**
- **It sorts resources in ascending and descending order**
- **It authenticates user**
- **User authorization is configured**


<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

> This section describes how you can clone and use this project.

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

+ [Node](https://kinsta.com/blog/how-to-install-node-js/)
+ [Ruby](https://learn.microsoft.com/en-us/sql/connect/ruby/step-1-configure-development-environment-for-ruby-development?view=sql-server-ver16)
+ [PostgreSQL](https://www.guru99.com/download-install-postgresql.html)
+ [Rails](https://www.guru99.com/download-install-postgresql.html)
+ [Rbenv](https://www.digitalocean.com/community/tutorials/how-to-install-ruby-on-rails-with-rbenv-on-macos)
+ [NPM](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm)
+ [Yarn](https://classic.yarnpkg.com/lang/en/docs/install/#windows-stable)

### Setup

Clone this repository to your desired folder:


```sh
cd <the name of folder you want to clone this project into>
git clone git@github.com:Gambit142/Search-Engine-App.git
cd Search-Engine-App
```

### Install

Install this project with:

```sh
bundle install
yarn install
```

### Database creation

Next, use this command to create the databases:
```
rails db:create
```

### Run Migrations

Next, use this command to run the migration files:
```
rails db:migrate
```

### Run Seed Data
Next, use this command to run seed data:
```
rails db:migrate
```

### Usage

To run the project, execute the following command:

```sh
./bin/dev
```


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

> Click on my social links to can contact me for work and collaboration.

👤 **Author**

- GitHub: [@Gambit142](https://github.com/Gambit142)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/francis-ugorji/)



<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- [ ] **Add more resources that can be queried**
- [ ] **Implement Pagination for resources**
- [ ] **Display more metrics**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

_NOTE: we recommend using the [MIT license](https://choosealicense.com/licenses/mit/) - you can set it up quickly by [using templates available on GitHub](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/adding-a-license-to-a-repository). You can also use [any other license](https://choosealicense.com/licenses/) if you wish._

<p align="right">(<a href="#readme-top">back to top</a>)</p>
