# Micolet coding challenge

# Objectives

- The email and user preferences must be stored in Database.
- The same email cannot be registered twice, an error message will be displayed to the user indicating that the email already exists.
- Make a simple validation of the user's input to guarantee that what they have entered complies with the valid format of an email.
- The user may select one or more preferences, but they must select at least one of them.
- Once the user has been registered successfully, an email will be sent confirming their subscription.

# Description of the Project

For the development of the project, the following tools were used:

- Rails v 2.7.2
- Bootstrap v 5.1

The purpose of the excersice is to build a simple landing page with a functional newsletter submission. Postgresql was used mainly to use the array functionality to save the subscriber's preference.

![image](./app/assets/images/screenshot.png)

- The homepage displays all the products from the API.

![image](./src/assets/Home.png)

If there's an error of somekind a message will appear.

![image](./src/assets/Error_message.png)

The homepage displays all products with the following details: name, price, discount, and the sale price.

The customer can browse through all the products that might be of interest, then add them to the cart. A small counter will keep track every time a new item is selected. Once the customer has finished, it is possible to check all the items that were selected, if needed it is possible to add more items, remove them or delete the whole shopping cart.

- Add or Remove items from the Cart List.

  ![image](./src/assets/Cart.png)

If the customer needs a more in-depth search, there is a search tab at the top of the navbar. From this part of the webpage is possible to add items to the shopping cart.

Every time there's a new search a request is sent to the '/search' endpoint through redux middleware to the API. If there's a 200 response, the data will be stored in redux and then displayed.

- Search in the database by name, price, category and/or discount.

  ![image](./src/assets/Search.png)

[Netlify-Deployment](https://competent-mcnulty-9b9b65.netlify.app/)
It may take some time for the page to load since Heroku also needs time to load the back-end.

[![Netlify Status](https://api.netlify.com/api/v1/badges/27052ef2-c6a3-4b01-9a4d-f11438f88ff4/deploy-status)](https://app.netlify.com/sites/competent-mcnulty-9b9b65/deploys)

### **Endpoints of API**

| Method | Endpoint   |      Functionality |
| ------ | ---------- | -----------------: |
| GET    | products   |   Get the products |
| GET    | categories | Get the categories |
| GET    | search     |     Get the search |

These are the 3 endpoints needed to display all the information in the webpage.

For example in the local environment the BASEURL will be : http://localhost:3000/

- Get BASE_URL+products, the request to this end point will give a response with all the products in the database
- Get BASE_URL+categories, the request to this end point will give a response with all the categories from the product in the database.
- Get BASE_URL+search, the request is a string with all the different search arguments you need ( name, price, discount or any category from the menu)

## How to start the project from your Local environment

- Open your terminal and cd where you want to store the project
- Run the following command - `git clone https://github.com/Wusinho/tienda-licor-front-end`
- Cd into the created directory
- Run `npm install` to install all dependencies
- To run the pogram type `npm start` on your terminal (by default http://localhost:3000, remember that the back-end should run at a different port).

## Author

👤 **Heber Lazo**

- Github: [@Wusinho](https://github.com/Wusinho)
- LinkedIn: [Heber Lazo](https://www.linkedin.com/in/heber-lazo-benza-523266133/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

## Show your support

Give a star if you :star: like this project!

## 📝 License

This project is [MIT](LICENSE) licensed.
