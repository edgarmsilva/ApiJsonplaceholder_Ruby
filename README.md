# Api jsonplaceholder Test Automation 
Automation Made by Edgar Silva

Date: March, 2024

Description:

This Automation was created from scratch using ruby language for test the provided APÌ in  https://jsonplaceholder.typicode.com/

It have automated tests running with github actions on each pull request on the main branch

## Requirements:
- Ruby

### The scope of this automation is: 
* Validate if the emails in the comments are properly formatted
* Validate the username search by an inexistent user
* Validate the post search by an inexistent user id
* Validate the post comment search by an inexistent post id

### instalation:

- run the command bellow to install all dependencies:

```
 bundle install
```

### Execution:

To run all tests from command console:

```
bundle exec rake apiJsonPlaceholder
```

or simply

```
cucumber
```