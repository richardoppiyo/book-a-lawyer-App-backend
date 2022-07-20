![](https://img.shields.io/badge/Microverse-blueviolet)

# Book a lawyer App

> This repository is a Ruby on Rails developed backend API only application  named "Book a lawyer App". The purpose of the project is to automate the law services. The Application allows an authenticated user to log in to the system, get a list of all available lawyers whose can be bookeed for a specified amount. The lawyers' bio has the contact details, location, pricing per hour of the lawyer from which a user gets more insights. It also has dedicated pages to see a user's reservations and a reserve form. An admin user has the right to add/remove a lawyer from the database and hence can see the Manage tab.


## Entity relationship diagram

![Diagram](./book-a-lawyer.png)

# Front End repository

[Link to the front end repository](https://github.com/helio3197/book-a-lawyer-App-frontend)


## Built With

- Ruby version 3.1.2
- Rails 7.0.3
- PostgreSQL v 14.4
- Devise
- Cancancan
- JWT Auth

## Hosting services

- The project is hosted on Heruku
- AWS S3 is used as the production storage service.


## Configuration and set-up

- Kindly ensure the following environments have been installed on you system:
  + Ruby
  + PostgreSQL
  + Rails

- Cloning the repository
  - ```
    git clone https://github.com/richardoppiyo/book-a-lawyer-App-backend.git
    ```

- Navigate to the project's root folder:
  - ```
    cd book-a-lawyer-App-backend
    ```

- Install dependencies:
  - ```
    bundle install
    ```

- Add the master key to the project:
  - Create a new file called: `master.key` in `./config` directory
    - ```
      touch ./config/master.key
      ```
  - Add the development secret key `d6f114bd6f255f293dcf131f49fe7079` on the new created `master.key` file
    - ```
      echo "d6f114bd6f255f293dcf131f49fe7079" >> master.key
      ```

- Create the database:
  - ```
    rails db:create
    ```

- Run migrations:
  - ```
    rails db:migrate
    ```

## Run the server

- To run the server use the following command (This runs the server on the defualt port: 3000):

```
rails s --port=3000
```

- Check the localhost with the correct port number and endpoint.


## Authors

👤 **Richard Opiyo**

- GitHub: [@richaroppiyo](https://github.com/richardoppiyo)
- Twitter: [@blessed_ricky](https://twitter.com/blessed_ricky)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/richardoppiyo/)


👤 **Kenny Salazar**

- GitHub: [@helio3197](https://github.com/helio3197)
- Twitter: [@kennysalazar31](https://twitter.com/kennysalazar31)
- LinkedIn: [LinkedIn](https://linkedin.com/in/kenny-salazar-1a1687110)


## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Microverse,
- Our coding partners, and
- Stand-up team members

## 📝 License

This project is [MIT](./LICENSE) licensed.
