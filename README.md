#### To-do API
Made with [Bloc](http://bloc.io)

To sign up:
```
curl -v -H "Accept: application/json" -H "Content-type: application/json" -X POST -d '{"user":{"email":"member@example.com", "password":"helloworld"}}' http://localhost:3000/users
```

To create tasks:
```
curl -v -H "Accept: application/json" -H "Content-type: application/json" -X POST -d '{"task":{"name":"example"}}' http://localhost:3000/tasks
```
