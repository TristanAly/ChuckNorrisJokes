
# Call API Project

In this project you will find two projects. 
- A project with the "https://api.chucknorris.io/jokes/random" API that generates a random joke 
- A project with the Github API "https://api.github.com/users" to find a Github profile by name
## API Reference

#### Get jokes

```http
  GET /api.chucknorris.io/jokes/random
```

#### Get user

```http
  GET /api.github.com/users/${pseudo}
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `pseudo`      | `string` | **Required**. pseudo of users to fetch |



## Tech Stack

**SwiftUI** 

