## SWBATs
- Understand, theoretically how authentication works
- Understand theoretically how authorization work
- Implement Sign in vs sign up
- Review sessions, cookies
- Implement log in, and log out

## Authentication && Authorization
1. What is authentication?
  - ensuring the user is who they say they are.
  - who they are and unique username
  - no duplicate for username/name
2. What is authorization?
  - access level
  - are they authorized to start looking at a page.
  - like facebook. 
## User Stories
1. As a registered teacher, I should be able to sign up by providing my username.
  - Model
    - Class
      - Teacher
    - Migration
      - create_teachers
    - Association
      - no associations
    - Seeds
      - no seed modifications
  - Routes
    - GET -> new -> '/teachers/new'
    - POST -> create -> '/teachers'
  - Controller
    new, create
  - View
    'new'
2. As a registered teacher, I should be able to log in by providing my username.
  - controller and check to see if that teacher already exists
  - authenticate
  - then set session to that username
  
    - Model
    - Routes
    - Controller
    - View

3. As an un-authenticated teacher, I should not be able to see a list of students and information about an individual student.

4. As an authenticated teacher I should be able see a list of students and information about an individual student plus create a new student.

5. If an un-authenticated teacher tries to see the new student form, they should be redirected to the login page.

6. As an authenticated user, I should be able to logout


## Resources
##### Password Authentication Guidelines
- install gem `bcrpyt`
- you don't store passwords as plain text
  - add a password_digest column.
  - add `has_secure_password` to the model with the password.
- at signin use the bcrypt authenticate method to confirm that the password matches
- password hashing is one-way encryption (we never decrypt it)

- [Digest](https://ruby-doc.org/stdlib-2.2.1/libdoc/digest/rdoc/Digest.html)
- [BCrypt](https://github.com/codahale/bcrypt-ruby)
